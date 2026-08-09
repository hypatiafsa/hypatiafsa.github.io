#! /bin/bash

################################################################################
#                                                                              #
# HypatiaFSA Webpage                                                           #
#                                                                              #
# test.sh                                                                      #
#                                                                              #
# Copyright (C) 2025, the Hypatia Development Team                             #
# All rights reserved.                                                         #
#                                                                              #
################################################################################

## Begin of file test.sh ##

set -euo pipefail
cd "$(dirname "$0")/.."

cleanup() {
  rm -rf _site Gemfile.lock
}
trap cleanup EXIT

bundle exec jekyll serve

## End of file test.sh ##
