export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

autoload -Uz compinit
compinit

export EDITOR="nvim"
export AGENT_BROWSER_EXECUTABLE_PATH='/home/navithecoderboi/.local/bin/chromium'
export PNPM_HOME="/home/navithecoderboi/.local/share/pnpm"
export PATH="$HOME/.local/bin:$PNPM_HOME:$PATH"

eval "$(starship init zsh)"
source <(fzf --zsh)
eval "$(zoxide init zsh)"
