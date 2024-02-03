<h1 align="center">My dotfiles</h1>

This repository contains the dotfiles in my system

# Requirements

Check if you have the following packages installed on your system

## Git
Debian and Ubuntu
```bash
sudo apt install git
```

Arach based
```bash
sudo pacman -S git
```

## Stow
Debian and Ubuntu
```bash
sudo apt install stow
```

Arach based
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

Alternatively you can run
`WARNNING: This will delete your existing dotfiles`
```bash
stow --adopt .
```
