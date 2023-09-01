# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' matcher-list ''
zstyle :compinstall filename '/home/mwilk/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=1000000000
SAVEHIST=1000000000
bindkey -v
# End of lines configured by zsh-newuser-install

AGKOZAK_MULTILINE=0

setopt INC_APPEND_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS

[[ -d ${ZDOTDIR:-~}/.antidote ]] ||
  git clone https://github.com/mattmc3/antidote ${ZDOTDIR:-~}/.antidote

source ${ZDOTDIR:-~}/.antidote/antidote.zsh
antidote load

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
