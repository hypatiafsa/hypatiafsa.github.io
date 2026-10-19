################################################################################
#                                                                              #
# HypatiaFSA Webpage                                                           #
#                                                                              #
# Makefile                                                                     #
#                                                                              #
# Copyright (C) 2025-2026, the Hypatia Development Team                        #
# All rights reserved.                                                         #
#                                                                              #
################################################################################

SHELL := /bin/bash
.SHELLFLAGS := -euo pipefail -c
.DEFAULT_GOAL := build

# Building, serving, and cleaning share the same output directory.
.NOTPARALLEL:
.PHONY: help build clean serve sync

BUNDLE ?= bundle

help:
	@printf '%s\n' \
	  'HypatiaFSA Webpage' \
	  '' \
	  '  make build       Build the website (default).' \
	  '  make clean       Remove the generated website and Gemfile.lock.' \
	  '  make serve       Serve the website locally with live reload.' \
	  '  make sync        Synchronise the workspace snapshot manifest.' \
	  '  make help        List the available commands.'

build:
	@printf '\n# Building the website...\n'
	$(BUNDLE) exec jekyll build

clean:
	@printf '\n# Cleaning the compilation work...\n'
	rm -rf _site Gemfile.lock

serve:
	@printf '\n# Serving the website...\n'
	@trap 'rm -rf _site Gemfile.lock' EXIT HUP INT TERM; \
	$(BUNDLE) exec jekyll serve --livereload

sync:
	@printf '\n# Synchronising the workspace snapshot...\n'
	./scripts/sync.sh
