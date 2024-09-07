#!/bin/zsh

# load colors and set promt
autoload -U colors && colors
PS1="%{$fg[green]%}%~%{$reset_color%} $%b "

HISTFILE=~/.cache/zsh/histfile
HISTSIZE=100000000
SAVEHIST=100000000

autoload -U compinit
zstyle ':completion:' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

bindkey -v

[ -f "$XDG_CONFIG_HOME/shell/aliasrc" ] && source "$XDG_CONFIG_HOME/shell/aliasrc"

source "$HOME/.config/zsh/zsh-vim-mode.plugin.zsh"

