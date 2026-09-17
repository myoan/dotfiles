# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/yoan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

function peco-src () {
  local selected_dir=$(ghq list -p | peco --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}

zle -N peco-src
bindkey '^g' peco-src
eval "$(direnv hook zsh)"

source $DOCKER_CONFIG/init-zsh.sh || true # Added by Docker Desktop
GPG_TTY=$TTY

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yoan/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/yoan/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/yoan/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/yoan/google-cloud-sdk/completion.zsh.inc'; fi

. "$CARGO_HOME/env"
alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
eval "$(~/.local/bin/mise activate zsh)"

# Load the pure theme, with zsh-async library that's bundled with it.
zinit ice pick"async.zsh" src"pure.zsh"
zinit light sindresorhus/pure

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zdharma/history-search-multi-word
alias ls=eza
alias vi=nvim
alias vim=nvim


# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
[[ ! -r '/Users/yoan/.opam/opam-init/init.zsh' ]] || source '/Users/yoan/.opam/opam-init/init.zsh' > /dev/null 2> /dev/null
# END opam configuration
