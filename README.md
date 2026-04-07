# Dotfiles

Managed with [dotter](https://github.com/SuperCuber/dotter).

## Configs

Alacritty, Aerospace, Helix, Starship, Yazi, Zed, Zellij, Zsh

## Install

```bash
brew install dotter
git clone git@github.com:NeoPrimate/Dotfiles.git ~/Dotfiles
cd ~/Dotfiles
dotter deploy --force
```

## Sync

```bash
./sync-dotfiles.sh              # default commit message
./sync-dotfiles.sh "message"    # custom commit message
```