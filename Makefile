EXCLUSIONS := .DS_Store .git .gitmodules .travis.yml
CANDIDATES := $(wildcard .??*) bin
DOTFILES   := $(filter-out $(EXCLUSIONS), $(CANDIDATES))
DOTPATH    := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))

## Create symlink to to home directory ##
deploy_mac:
		@$(foreach val, $(DOTFILES), ln -sfnv $(abspath $(val)) $(HOME)/$(val);)

## Setup environment settings ##
# macOS
init_mac:
		@DOTPATH=$(DOTPATH) bash $(DOTPATH)/etc/init/macOS/init.sh
