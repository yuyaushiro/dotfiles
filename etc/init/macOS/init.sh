#!/bin/bash

# for i in "$DOTPATH"/etc/init/macOS/*[^init].sh
for i in ~/dotfiles/etc/init/macOS/*[^init].sh
do
    if [ -f "$i" ]; then
        e_arrow "$(basename "$i")"; bash "$i"
    else
        continue
    fi
done
