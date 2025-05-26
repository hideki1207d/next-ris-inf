#!/bin/bash

echo "🚀 Starting Jekyll server..."

# 依存関係をインストール
bundle install

# Jekyllサーバーを起動
bundle exec jekyll serve --host 0.0.0.0 --port 8080 --livereload

echo "✅ Jekyll server started on http://localhost:8080" 