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

bundle exec jekyll serve
rm -rf _site Gemfile.lock

## End of file test.sh ##
