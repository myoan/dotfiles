# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="sorin"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ssh-agent ruby gem zsh-syntax-highlighting anyframe)

HISTSIZE=100000
SAVEHIST=100000

source $ZSH/oh-my-zsh.sh

PATH=/usr/local/bin:$PATH
alias g='ssh gate'
export PATH="$HOME/.rbenv/shims:$PATH"

alias peco='peco --layout=bottom-up'
alias -g p='| peco'

function peco-select-history() {
    local tac
    if which tac > /dev/null; then
        tac="tac"
    else
        tac="tail -r"
    fi
    BUFFER=$(\history -n 1 | \
        eval $tac | \
        peco --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle clear-screen
}
zle -N peco-select-history
bindkey '^r' peco-select-history
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

export PATH="$HOME/.rbenv/versions/2.0.0-p481/lib/ruby/gems/2.0.0/gems/chef-zero-3.2/bin:$PATH"
export PATH="$HOME/.rbenv/versions/2.0.0-p481/lib/ruby/gems/2.0.0/gems/chef-11.16.4/bin/:$PATH"

#########################################
# cdr config
#########################################

autoload -Uz is-at-least
if is-at-least 4.3.11
then
  autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
  add-zsh-hook chpwd chpwd_recent_dirs
  zstyle ':chpwd:*' recent-dirs-max 5000
  zstyle ':chpwd:*' recent-dirs-default yes
  zstyle ':completion:*' recent-dirs-insert both
fi

autoload -Uz chpwd_recent_dirs cdr add-zsh-hook
add-zsh-hook chpwd chpwd_recent_dirs

#########################################
# peco-tmux config
#########################################

function peco-tmux () {
  local i=$(tmux lsw | awk '/active.$/ {print NR-1}')
  local f='#{window_index}: #{window_name}#{window_flag} #{pane_current_path}'
  tmux lsw -F "$f"                                  \
    | anyframe-selector-auto "" --initial-index $i  \
    | cut -d ':' -f 1                               \
    | anyframe-action-execute tmux select-window -t
}

zle -N peco-tmux
bindkey '^t' peco-tmux
