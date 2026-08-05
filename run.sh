#!/usr/bin/env bash
# Serve the site locally at http://localhost:4000 with live reload.
set -euo pipefail
cd "$(dirname "$0")"

if [ ! -d vendor/bundle ]; then
  bundle config set path vendor/bundle
  bundle install
fi

bundle exec jekyll serve --livereload
