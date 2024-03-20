# knarfS's dotfiles

After cloning the dotfiles repository, get all submodules:

```bash
git submodule update --init
```

## astronvim_user

### Prerequisites

Install nerdfonts (Hack, JetBrainsMono and NerdFontsSymbolsOnly (20,30,39)):

```bash
sudo apt purge fonts-hack
sudo apt install fzf
git clone https://github.com/ronniedroid/getnf.git
cd getnf
./getnf
sudo apt install fonts-hack
```

Clone AstroNvim:

```bash
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
```

## ssh

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

### After Installation

Set zsh as default shell:

```bash
chsh --shell /bin/zsh <username>
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

