#! /bin/bash

################################################################################
#                                                                              #
# HypatiaFSA Webpage                                                           #
#                                                                              #
# sync.sh                                                                      #
#                                                                              #
# Copyright (C) 2025, the Hypatia Development Team                             #
# All rights reserved.                                                         #
#                                                                              #
################################################################################

## Begin of file sync.sh ##

set -euo pipefail

cd "$(dirname "$0")/.."

require_command() {
  command -v "$1" >/dev/null 2>&1 || {
    printf 'ERROR: required command not found: %s\n' "$1" >&2
    exit 1
  }
}

require_command git
require_command ruby

config="$(
  ruby -ryaml -e '
    config = YAML.load_file("_config.yml")
    workspace = config.fetch("workspace")

    puts [
      workspace.fetch("repository"),
      workspace.fetch("ref"),
      workspace.fetch("manifest")
    ].join("\t")
  '
)"

IFS=$'\t' read -r repository ref manifest <<< "$config"

ref="${HYPATIA_WORKSPACE_REF:-$ref}"

temporary_directory=""

cleanup() {
  if [[ -n "$temporary_directory" ]]; then
    rm -rf "$temporary_directory"
  fi
}

trap cleanup EXIT HUP INT TERM

if [[ -n "${HYPATIA_WORKSPACE_DIR:-}" ]]; then
  workspace_directory="$HYPATIA_WORKSPACE_DIR"

  [[ -d "$workspace_directory" ]] || {
    printf 'ERROR: workspace directory not found: %s\n' \
      "$workspace_directory" >&2
    exit 1
  }
else
  temporary_directory="$(
    mktemp -d "${TMPDIR:-/tmp}/hypatia-website.XXXXXX"
  )"

  workspace_directory="$temporary_directory/workspace"

  git init --quiet "$workspace_directory"
  git -C "$workspace_directory" remote add origin "$repository"

  printf 'INFO: fetching workspace ref %s\n' "$ref"

  git -C "$workspace_directory" \
    fetch --quiet --depth 1 origin "$ref"

  git -C "$workspace_directory" \
    checkout --quiet --detach FETCH_HEAD
fi

source_manifest="$workspace_directory/$manifest"

[[ -f "$source_manifest" ]] || {
  printf 'ERROR: workspace manifest not found: %s\n' \
    "$source_manifest" >&2
  exit 1
}

ruby -ryaml -e '
  manifest = YAML.load_file(ARGV.fetch(0))

  unless manifest.is_a?(Hash) &&
         manifest["snapshot"].is_a?(String) &&
         manifest["status"].is_a?(String) &&
         manifest["components"].is_a?(Hash)
    warn "ERROR: invalid workspace manifest"
    exit 1
  end
' "$source_manifest"

mkdir -p _data
cp "$source_manifest" _data/snapshot.yaml

printf 'OK: workspace snapshot materialised in _data/snapshot.yaml\n'

## End of file sync.sh ##
