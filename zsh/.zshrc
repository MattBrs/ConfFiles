if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


autoload -Uz compinit
compinit

source ~/powerlevel10k/powerlevel10k.zsh-theme

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /usr/local/Cellar/fzf/0.46.1/shell/key-bindings.zsh



alias ll="exa -al"
[[ -s "/Users/matteobrusarosco/.gvm/scripts/gvm" ]] && source "/Users/matteobrusarosco/.gvm/scripts/gvm"
export PATH="/Applications/Emacs.app/Contents/MacOS:/Applications/Emacs.app/Contents/MacOS/bin:$PATH"
alias emacs="Emacs"
alias n="nvim"
alias nv="nvim"

eval "$(zoxide init zsh)"

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# >>>> Vagrant command completion (start)
fpath=(/opt/vagrant/embedded/gems/gems/vagrant-2.3.7/contrib/zsh $fpath)
compinit
# <<<<  Vagrant command completion (end)
export TERM=xterm-256color

# Created by `userpath` on 2023-09-08 12:27:14
export PATH="$PATH:/Users/matteobrusarosco/.local/bin"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/opt/libressl/bin:$PATH"


