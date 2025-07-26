#!/bin/bash

echo "==== Ghost Wiki Troubleshooting Script ===="
echo "This script will check for common issues with GitHub Pages deployment"

# Check if bundle is installed
if ! command -v bundle &> /dev/null; then
    echo "❌ Bundle not found. Installing..."
    gem install bundler
else
    echo "✅ Bundle is installed"
fi

# Ensure dependencies are installed
echo "Installing dependencies..."
bundle install

# Check Jekyll version
echo "Jekyll version:"
bundle exec jekyll --version

# Check that the theme is properly installed
if bundle list | grep -q "just-the-docs"; then
    echo "✅ Just the Docs theme is installed"
else
    echo "❌ Just the Docs theme is not installed. Installing..."
    bundle add just-the-docs
fi

# Clean up any previous builds
echo "Cleaning previous builds..."
bundle exec jekyll clean

# Build the site with verbose output
echo "Building site with verbose output to check for errors..."
JEKYLL_ENV=production bundle exec jekyll build --verbose

# Check if build succeeded
if [ -d "_site" ]; then
    echo "✅ Site built successfully"
    echo "Checking asset files..."
    
    # Check for CSS files
    if ls _site/assets/css/*.css 1> /dev/null 2>&1; then
        echo "✅ CSS files found"
    else
        echo "❌ No CSS files found in _site/assets/css/"
    fi
    
    # Check for JS files
    if ls _site/assets/js/*.js 1> /dev/null 2>&1; then
        echo "✅ JS files found"
    else
        echo "❌ No JS files found in _site/assets/js/"
    fi
else
    echo "❌ Site build failed"
fi

echo "Troubleshooting complete. If issues persist, check the _config.yml file and ensure your GitHub Pages settings are correct."
