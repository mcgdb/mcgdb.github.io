CURRENT_DIR = $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
JEKYLL_SERVE_OPTS = --watch --incremental
.DEFAULT_GOAL := serve

clean: configure
	bundle exec jekyll clean

configure:
	bundle install --path=.bundle
	bundle update

serve: clean
	bundle exec jekyll serve $(JEKYLL_SERVE_OPTS)
