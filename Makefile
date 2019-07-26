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

## Setup VSCode settings
vscode_json:
		/bin/bash vscode/install_settings_json.sh
vscode_extensions:
		/bin/bash vscode/install_extensions.sh

## Setup prompt
prompt:
		/bin/bash zprezto/install_mypure.sh
