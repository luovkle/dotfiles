# Dotfiles

## Requirements

### Chezmoi

It is required to have the [chezmoi](https://www.chezmoi.io/) application installed.

```sh
# installation with git
git clone https://github.com/twpayne/chezmoi.git
cd chezmoi
make install
```

[Other ways to install chezmoi](https://www.chezmoi.io/install/).

### Nvchad

```sh
# installation for Linux / MacOS
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```

[Complete nvchad Installation guide.](https://nvchad.com/quickstart/install)

## Install dotfiles

```sh
chezmoi init --apply https://github.com/luovkle/dotfiles.git
```
