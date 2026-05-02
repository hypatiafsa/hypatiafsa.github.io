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

set -eu
cd "$(dirname "$0")"

bundle exec jekyll serve
rm -rf _site Gemfile.lock

## End of file test.sh ##
