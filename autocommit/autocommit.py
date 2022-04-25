#!/usr/bin/env python3

import os

cmsg = "autocommit"
dots = "/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
print("="*60)
print(f"Syncing Dotfiles")
os.system(f"{dots} add .config")
os.system(f"{dots} add .local/share/fonts")
os.system(f"{dots} commit -m {cmsg}")
os.system(f"{dots} push")
print(f"Dotfiles Synced")
print("="*60)
