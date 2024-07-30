<h1 align="center">📄 My dotfiles</h1>

This repository contains the dotfiles in my system

# 📦 Requirements

Make sure you have GNU Stow and Git installed on your system

## Git
Debian and Ubuntu:
```bash
sudo apt install git stow
```

Arch based:
```bash
sudo pacman -S git stow
```

# 📥 Installation

First clone this repository in your $HOME directory threw Git
```bash
git clone --recursive https://github.com/ChenTechGit/dotfiles
```

Now use GNU Stow to create symbolik links
`NOTE You need to delete or backup your existing dotfiles such as .bashrc`
```bash
stow .
```
