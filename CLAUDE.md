# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

Personal dotfiles repository for vim, zsh, tmux, git, and bash configurations. Configs are symlinked from this repo into the home directory.

## Setup

```bash
# Install all dotfiles (creates symlinks to $HOME)
./install.sh

# Install with client-specific configs (includes Vimperator)
./install.sh -c
```

The install script symlinks `.vimrc`, `.vim/`, `.zshrc`, `.tmux.conf`, `.gitconfig`, `.gitignore`, and `.gitmodules` into `$HOME`. It also bootstraps NeoBundleVim for Vim plugin management.

## Architecture

**Vim** (`.vimrc` + `.vim/startup/`): The vimrc sources modular config files from `.vim/startup/`:
- `bundle.vim` — NeoBundleVim plugin declarations
- `config.vim` — Core editor settings
- `color.vim` — Colorscheme setup
- `complcache.vim` — Neocomplcache completion settings

**Zsh** (`.zshrc`): Uses oh-my-zsh framework with zinit plugin manager. Includes peco integration for interactive history search (`Ctrl+r`) and tmux window selection (`Ctrl+t`). Configures rbenv, nodenv, direnv, and Google Cloud SDK.

**Tmux** (`.tmux.conf`): Prefix is `Ctrl+j`. Uses vi-mode copy keybindings. macOS-specific clipboard integration via `reattach-to-user-namespace`.

**Git** (`.gitconfig`): Aliases: `br`, `ci`, `co`, `st`.

## Known Issues

- `.vimrc` sources `.vim/startup/keybind.vim` which does not exist in the repo.
- The `neobundle.vim` and `neocomplcache` submodules under `.vim/bundle/` have been removed but `.gitmodules` still tracks changes.
- The `zsh/` directory contains an alternative `.zshrc` that is untracked.
