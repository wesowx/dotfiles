source $(brew --prefix zsh-syntax-highlighting)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias nv='nvim'

export FZF_DEFAULT_OPTS="
  --height=40%
  --layout=reverse
  --border
  --preview 'bat --style=numbers --color=always {}'
  --preview-window=right:60%
"

export FZF_CTRL_T_OPTS="
  --style full
  --preview 'fzf-preview.sh {}'
  --bind 'focus:transform-header:file --brief {}'
"
export FZF_DEFAULT_COMMAND='fd --type file --follow --hidden --exclude .git'

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

source <(fzf --zsh)

# opencode
export PATH=/Users/wesowx/.opencode/bin:$PATH
