#!/bin/bash

# Setup Ruby environment if needed
if ! command -v bundle &> /dev/null; then
    echo "Installing bundler..."
    gem install bundler
fi

# Install dependencies
echo "Installing dependencies..."
bundle install

# Run Jekyll with development config
echo "Starting local server..."
bundle exec jekyll serve --config _config.yml,_config_development.yml --livereload 2>/dev/null

# The server will be available at http://localhost:4000
