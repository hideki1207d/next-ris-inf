#!/bin/bash
set -e

echo "Starting Jekyll startup script..."

# 作業ディレクトリに移動
cd /workspaces/next-ris-inf

# 既存のJekyllプロセスを停止
pkill -f jekyll || true
sleep 2

# Jekyllサーバーを起動
echo "Starting Jekyll server..."
bundle exec jekyll serve --host 0.0.0.0 --detach

echo "Jekyll server started successfully!" 