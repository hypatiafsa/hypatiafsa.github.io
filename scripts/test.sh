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
trap cleanup EXIT HUP INT TERM

bundle exec jekyll serve --livereload

## End of file test.sh ##
