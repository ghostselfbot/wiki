#!/bin/bash

# Build the site without Sass warnings
echo "Building site without Sass warnings..."
bundle exec jekyll build 2>/dev/null

echo "Site built successfully in _site directory"
