#!/bin/bash

brew install zsh zsh-autosuggestions zsh-completions zsh-syntax-highlighting colordiff reattach-to-user-namespace tmux

echo "============================="
echo "sudo vim /etc/shells"
echo ""
echo "/usr/local/bin/zsh"
echo "---------"
echo "chsh -s /usr/local/bin/zsh"
echo "0"
echo "============================="
