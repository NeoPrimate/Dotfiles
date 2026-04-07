export PATH="$HOME/.cargo/bin:$PATH"
export EDITOR="hx"

eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"

# eval "$(zellij setup --generate-auto-start zsh)"

if [[ -z "$ZED_TERM" && "$TERM_PROGRAM" != "zed" ]]; then
    eval "$(zellij setup --generate-auto-start zsh)"
fi

alias ls="eza -lh --color=always --long --git --no-filesize --icons=always --no-time --no-user --no-permissions" # --sort=modified -lh
alias ..="cd .."
alias zshrc="hx ~/.zshrc"
alias tree="eza -TL"
alias cat="bat"
alias biblio="bat ~/documents/bibliographies/bibliography.bib"
alias llama="ollama run llama3"

alias cqlsh=/Users/vb/Library/Python/3.9/bin/cqlsh

# plugins
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-history-substring-search/zsh-history-substring-search.zsh

# history substring search options
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
export AICHAT_CONFIG_DIR="$HOME/.config/aichat"

. "$HOME/.local/bin/env"
source $HOME/.local/bin/env

# Added by Windsurf
export PATH="/Users/vb/.codeium/windsurf/bin:$PATH"

# OpenClaw Completion
# source "/Users/vb/.openclaw/completions/openclaw.zsh"

# Added by Antigravity
# export PATH="/Users/vb/.antigravity/antigravity/bin:$PATH"

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
alias dotfiles='git --git-dir=$HOME/Dotfiles --work-tree=$HOME'
