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

ln -sf "$storage/Download" ~/storage/downloads
ln -sf "$storage/Documents" ~/storage/documents
ln -sf "$storage/Repositories" ~/storage/repositories

# Install tools
pkg install -y \
    zsh \
    vim \
    openssh \
    git \
    gnupg \
    rsync \
    rclone \
    gopass \
    chezmoi
