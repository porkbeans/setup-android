# setup-termux

My termux configurations.

**DO NOT** use this repository as is because it contains some tweaks for me.

# Usage

1. Install Favorite apps from Play Store
    - [Obsidian](https://play.google.com/store/search?q=obsidian&c=apps)
1. Install F-Droid
    1. `make verify` on PC
    1. Copy F-Droid.apk to Android
    1. Install F-Droid
1. Install [Termux](https://f-droid.org/packages/com.termux/) from F-Droid
1. `curl 'https://raw.githubusercontent.com/porkbeans/setup-termux/refs/heads/main/setup.sh' | bash`
1. `ssh-keygen -t ed25519 -C 'porkbeans@android'`
1. `cat .ssh/id_ed25519.pub` and Add it to GitHub
1. `chezmoi init git@github.com:porkbeans/dotfiles.git`
1. `chezmoi apply`
