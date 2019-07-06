# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
	source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Prompt
PROMPT='%F{yellow}%n@%m%f:%F{blue}%~%f$ '

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
