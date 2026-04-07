#!/bin/bash
cd ~/Dotfiles
dotter deploy --force
git add -A
git commit -m "${1:-update configs}"
git push
