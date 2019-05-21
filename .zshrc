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
