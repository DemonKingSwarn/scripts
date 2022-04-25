#!/usr/bin/env python3

import os

cmsg = "autocommit"
dots = "/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

os.system(f"tput setaf 4")
os.system(f"printf \"%$(tput cols)s\n\" | tr \" \" \"=\"")
print(f"Updating Dotfiles")
os.system(f"tput setaf 7")
os.system(f"{dots} add .config")
os.system(f"{dots} add .local/share/fonts")
os.system(f"{dots} add ~/README.org")
os.system(f"{dots} commit -m {cmsg}")
os.system(f"{dots} push")
os.system(f"tput setaf 2")
os.system(f"printf \"%$(tput cols)s\n\" | tr \" \" \"=\"")
print(f"Dotfiles Updated")
