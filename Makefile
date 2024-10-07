# Script automatically checks if the tool is installed and applies config.
# Shell variable must be specified manually for automatic environment
# configuration. Scripts supports only SH, BASH and ZSH.

SHELL := /bin/bash

.PHONY: install
install: sh git nvim

.PHONY: sh
# Automatically detecting shell and installing config and aliases
sh:
	@echo "Installing configs for shell..."
	@( \
		if [ -n "$$BASH_VERSION" ]; then \
			echo "BASH shell detected."; SHELL_RC="$$HOME/.bashrc"; \
		elif [ -n "$$ZSH_VERSION" ]; then \
			echo "ZSH shell detected."; SHELL_RC="$$HOME/.zshrc"; \
		elif [ "$$SHELL" = "/bin/sh" ]; then \
			echo "SH detected."; SHELL_RC="$$HOME/.profile"; \
		else \
			echo "Unsupported shell. Only SH, BASH and ZSH are supported. Aborting installation..."; \
			exit 1; \
		fi; \
		\
		if [ ! -f "$$SHELL_RC" ]; then \
			touch "$$SHELL_RC"; echo "Shell profile is empty. Creating new file: $$SHELL_RC."; \
		else \
			echo "Using existing shell profile at: $$SHELL_RC."; \
		fi; \
		\
		echo -e "\n# Custom shell aliases" >> $$SHELL_RC; \
		cat aliases >> $$SHELL_RC; \
		echo -e "# End custom shell aliases\n" >> $$SHELL_RC; \
	)


.PHONY: git
# Installing configs for Git CLI
git:
	@echo "Installing configs for Git CLI..."
	@which git >/dev/null || (echo "Git is not installed. Aborting installation..." && exit 1)
	cp -fi .gitconfig ${HOME}/.gitconfig

.PHONY: nvim
# Installing configs for NeoVim editor
nvim:
	@echo "Installing configs for NeoVim..."
	@which nvim >/dev/null || (echo "NeoVim is not installed. Aborting installation..." && exit 1)
	cp -fi .config/nvim/ ${HOME}/.config/nvim/

