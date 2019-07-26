# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
	source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Prompt
# PROMPT='%F{yellow}%n@%m%f:%F{blue}%~%f$ '

#LS_COLORSを設定しておく
export LSCOLORS=gxfxcxdxbxegedabagacad
export LS_COLORS='di=36:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
#ファイル補完候補に色を付ける
autoload -U compinit
compinit
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# Alias
alias mv='mv -i'
alias rm='rm -i'
alias ..='cd ..'
alias ...= 'cd ../..'
alias ....= 'cd ../../..'

# Python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
alias activate="source $PYENV_ROOT/versions/anaconda3-2019.03/bin/activate"
alias deactivate="source $PYENV_ROOT/versions/anaconda3-2019.03/bin/deactivate"
