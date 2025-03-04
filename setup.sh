#!/data/data/com.termux/files/usr/bin/env bash

# Check internal storage
storage="/storage/emulated/0"
if [ ! -d "$storage" ]; then
    echo "Error: $storage does not exist."
    exit 1
fi

# Check Termux prefix
if [ -z "$PREFIX" ]; then
    echo "Error: PREFIX is not set."
    exit 1
fi

# Allow storage permission
termux-setup-storage

mkdir -p "$storage/Download"
mkdir -p "$storage/Documents"
mkdir -p "$storage/Repositories"

ln -sn "$storage/Download" ~/storage/downloads
ln -sn "$storage/Documents" ~/storage/documents
ln -sn "$storage/Repositories" ~/storage/repositories

# Install tools
pkg install -y \
    build-essential \
    make \
    bash \
    bash-completion \
    zsh \
    zsh-completions \
    vim \
    nano \
    which \
    tree \
    eza \
    bat \
    less \
    ripgrep \
    fd \
    duf \
    ncdu \
    openssh \
    rsync \
    rclone \
    git \
    tig \
    gh \
    diff-so-fancy \
    gnupg \
    age \
    jq \
    gopass \
    chezmoi \
    starship \
    direnv \
    python \
    uv
