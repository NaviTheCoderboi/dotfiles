bindkey -e

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# -------------------------
# Cursor movement
# -------------------------

# Home / End
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[1~' beginning-of-line
bindkey '^[[4~' end-of-line
bindkey '\e[H' beginning-of-line
bindkey '\e[F' end-of-line

# Arrow keys (explicit, safe)
bindkey '^[[A' up-line-or-history
bindkey '^[[B' down-line-or-history
bindkey '^[[C' forward-char
bindkey '^[[D' backward-char

# -------------------------
# Editing
# -------------------------

# Delete
bindkey '^[[3~' delete-char

# Backspace
bindkey '^?' backward-delete-char

# Ctrl + D (delete forward)
bindkey '^D' delete-char

# -------------------------
# Word movement
# -------------------------

# Alt + ← / →
bindkey '^[b' backward-word
bindkey '^[f' forward-word

# Ctrl + ← / →
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

# -------------------------
# Line editing
# -------------------------

# Ctrl + A / E
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line

# Ctrl + U / K
bindkey '^U' backward-kill-line
bindkey '^K' kill-line

# Ctrl + W (delete word backward)
bindkey '^W' backward-kill-word

# Alt + D (delete word forward)
bindkey '^[d' kill-word

# -------------------------
# History
# -------------------------

# Ctrl + P / N
bindkey '^P' up-line-or-history
bindkey '^N' down-line-or-history

# Ctrl + R (fzf history)
bindkey '^T' fzf-file-widget
bindkey '^[c' fzf-cd-widget
bindkey '^R' fzf-history-widget
