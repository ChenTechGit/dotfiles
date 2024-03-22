<h1 align="center">📄 My dotfiles</h1>

This repository contains the dotfiles in my system

# 📦 Requirements

Check if you have the following packages installed on your system

## Git
Debian and Ubuntu
```bash
sudo apt install git
```

Arch based
```bash
sudo pacman -S git
```

## Stow
Debian and Ubuntu
```bash
sudo apt install stow
```

Arch based
```bash
sudo pacman -S stow
```

# 📥 Installation

First clone this repository in your $HOME directory threw Git
```bash
git clone https://github.com/kevinyyca/dotfiles
```

Now use GNU Stow to create symbolik links
`NOTE You need to delete or backup your existing dotfiles such as .bashrc`
```bash
stow .
```

`WARNNING: This will delete your existing dotfiles`
Alternatively you can run this:
```bash
stow --adopt .
```
