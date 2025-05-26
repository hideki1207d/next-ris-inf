FROM mcr.microsoft.com/devcontainers/jekyll:2-bookworm

# 必要なシステムパッケージの追加
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends \
    build-essential \
    libvips-dev

# GitHub Pages互換環境の構築
RUN gem install github-pages
