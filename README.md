<h1 align="center">📄 My dotfiles</h1>
I use Arch btw.

### Credits
#### Fastfetch
1. Compact config based on: https://github.com/fastfetch-cli/fastfetch/blob/dev/presets/examples/13.jsonc (main)
2. Big config based on: https://github.com/Sk7Str1pe/Public
#### Neovim
I learnt to configure Neovim from these videos from [Josean Martinez](https://www.youtube.com/@joseanmartinez)

<h1 align="center">📦 Requirements</h1>

Make sure you have GNU Stow and Git installed on your system

## Git
Debian Ubuntu and Mint:
```bash
sudo apt install git stow
```

Arch based:
```bash
sudo pacman -S git stow
```

<h1 align="center">📥 Installation</h1>
First clone this repository in your $HOME directory with Git:

```bash
git clone --recursive https://github.com/ChenTechGit/dotfiles
```
Clone the Testing branch with this command:

```bash
git clone -b Testing --recursive https://github.com/ChenTechGit/dotfiles
```

Now use GNU Stow to create symbolik links
`NOTE You need to delete or backup your existing dotfiles such as .bashrc`
```bash
stow .
```

## Old configs?
You may find my old configs in the [unused](https://github.com/ChenTechGit/dotfiles/tree/unused).
