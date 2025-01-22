# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

export FZF_DEFAULT_OPTS="--walker=file,hidden --preview 'bat {} --color=always'"

# Shell integration for Ghostty
if [ -n "${GHOSTTY_RESOURCES_DIR}" ]; then
    builtin source ${GHOSTTY_RESOURCES_DIR}/shell-integration/zsh/ghostty-integration
fi

source ~/.fzf-tab/fzf-tab.plugin.zsh

export PATH="$PATH:/usr/local/bin";

export EDITOR="nvim"

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit

eval "$(zoxide init zsh)"
alias zvim="fzf --bind 'enter:become(nvim {})'"

# bun completions
[ -s "/Users/jeremy/.bun/_bun" ] && source "/Users/jeremy/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Lazygit
alias lg='lazygit'

source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
