#!/bin/bash
set -e

echo "Starting Jekyll setup..."

# Gemfileが存在しない場合、新しいJekyllサイトを作成
if [ ! -f Gemfile ]; then
    echo "Creating new Jekyll site..."
    jekyll new . --force
    
    echo "Configuring for GitHub Pages..."
    # Jekyll gemをコメントアウト
    sed -i 's/gem "jekyll"/# gem "jekyll"/' Gemfile
    # GitHub Pages gemを有効化
    sed -i 's/# gem "github-pages"/gem "github-pages"/' Gemfile
    
    echo "Updating bundle..."
    bundle update
fi

echo "Installing dependencies..."
bundle install

echo "Starting Jekyll server..."
bundle exec jekyll serve --host 0.0.0.0 --detach

echo "Jekyll setup completed!" 