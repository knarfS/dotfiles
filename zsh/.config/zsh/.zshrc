# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Setup aliases
source ~/.config/zsh/aliases

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Shell history
setopt histignorealldups sharehistory
setopt HIST_IGNORE_SPACE
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Search histrory with PgUp and PgDown
# bindkey "$terminfo[kpp]" up-line-or-search # Only searches first word
# bindkey "$terminfo[knp]" down-line-or-search # Only searches first word
autoload -Uz up-line-or-beginning-search
autoload -Uz down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "$terminfo[kpp]" up-line-or-beginning-search # PgUp
bindkey "$terminfo[knp]" down-line-or-beginning-search # PgDown

# Forward / Backward a word
bindkey "$terminfo[kLFT5]" backward-word # Ctrl + LeftArrow
bindkey "$terminfo[kRIT5]" forward-word # Ctrl + RightArrow

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion::*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Syntax highlighting
#source ~/.config/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# Auto suggestions
source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(starship init zsh)"

