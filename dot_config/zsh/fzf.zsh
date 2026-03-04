export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_DEFAULT_OPTS='
    --height=40%
    --layout=reverse
    --border
    --info=inline
'

export FZF_CTRL_T_OPTS="
    --preview 'bat --style=numbers --color=always --line-range :300 {}'
"

export FZF_ALT_C_OPTS="
    --preview 'eza -T --color=always --icons --level=2 {}'
"

