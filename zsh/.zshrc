if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /usr/local/Cellar/fzf/0.46.1/shell/key-bindings.zsh


autoload -Uz compinit

alias ll="exa -al"
[[ -s "/Users/matteobrusarosco/.gvm/scripts/gvm" ]] && source "/Users/matteobrusarosco/.gvm/scripts/gvm"
export PATH="/Applications/Emacs.app/Contents/MacOS:/Applications/Emacs.app/Contents/MacOS/bin:$PATH"
alias emacs="Emacs"
alias n="nvim"
alias nv="nvim"

eval "$(zoxide init zsh)"

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end

bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end


export TERM=xterm-256color

# Created by `userpath` on 2023-09-08 12:27:14
export PATH="$PATH:/Users/matteobrusarosco/.local/bin"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/opt/libressl/bin:$PATH"

compinit


# >>>> Vagrant command completion (start)
fpath=(/opt/vagrant/embedded/gems/gems/vagrant-2.4.1/contrib/zsh $fpath)
compinit
# <<<<  Vagrant command completion (end)

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
