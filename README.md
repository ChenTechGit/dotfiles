<h1 align="center">📄 My dotfiles</h1>

<h1 align="center">📦 Requirements</h1>

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
<h1 align="center">📥 Installation</h1>
> [!NOTE]  
> I often merge the Main branch and the Testing branch together, right after a commit.
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
