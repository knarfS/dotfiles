# knarfS's dotfiles

After cloning the dorfiles repository, get all submodules:

```bash
git submodule update --init
```

## astronvim_user

### Prerequisites

Clone AstroNvim:

```bash
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
```

## starship

### Prerequisites

Install starship into $HOME/bin:

```bash
curl -sS https://starship.rs/install.sh | sh -s -- --bin-dir $HOME/bin
```

## zsh

### Prerequisites

```bash
mkdir -p ~/.cache/zsh
touch ~/.cache/zsh/history
```

### Dependencies

* startship

## bash

### Optional dependencies

* starship

## tmux

### Prerequisites

```bash
sudo apt install xclip
```

Install TPM:

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Install plugins after starting tmux: `Prefix` + `I`

