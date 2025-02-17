# knarfS's dotfiles

After cloning the dotfiles repository, get all submodules:

```bash
git submodule update --init
```

Install GNU Stow to use/manage the dotfiles from this repository:

```bash
sudo apt install stow
```

To use a configutation (e.g. `zsh`) from the dotfiles repository:

```bash
cd ~/dotfiles
stow zsh
```

Other useful stow commands:

```bash
stow -n <packagename> # trial runs or simulates symlink generation. Effective for checking for errors
stow -D <packagename> # delete stowed package
stow -R <packagename> # restows package
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

## Hyprland

### Prerequisites

```bash
sudo apt install hyprland waybar fuzzel kitty hyprpaper qtwayland5 qt6-wayland qt5ct qt6ct \
    xdg-desktop-portal-hyprland pavucontrol-qt brightnessctl pamixer \
    sway-notification-center libnotify-bin swayosd cliphist \
    swayidle swaylock
```

