DOTFILES_DIR := $(CURDIR)
CONFIG_DIR   := $(HOME)/.config
TARGETS      := nvim tmux zsh git ghostty

.PHONY: install $(TARGETS) uninstall

install: $(TARGETS)
	@echo ""
	@echo "NOTE: zsh reads .zshrc from \$$ZDOTDIR (expected: $(CONFIG_DIR)/zsh)."
	@echo "Make sure ZDOTDIR=\$$XDG_CONFIG_HOME/zsh is set (e.g. in /etc/zshenv) on this machine."

$(TARGETS):
	mkdir -p $(CONFIG_DIR)
	rm -rf $(CONFIG_DIR)/$@
	ln -s $(DOTFILES_DIR)/$@ $(CONFIG_DIR)/$@

uninstall:
	@for t in $(TARGETS); do \
		if [ -L $(CONFIG_DIR)/$$t ] && [ "$$(readlink $(CONFIG_DIR)/$$t)" = "$(DOTFILES_DIR)/$$t" ]; then \
			rm $(CONFIG_DIR)/$$t; \
			echo "removed $(CONFIG_DIR)/$$t"; \
		fi; \
	done
