if [ -f ~/aliases ]; then
    . ~/aliases
fi

# pnpm
export PNPM_HOME="/Users/dani/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export PATH="$PATH:/Users/dani/.flutterdir/flutter/bin"

eval $(thefuck --alias fuck)
# bun completions
[ -s "/Users/dani/.bun/_bun" ] && source "/Users/dani/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Homebrew
export HOMEBREW_INSTALL_BADGE="✅"

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/dani/.dart-cli-completion/zsh-config.zsh ]] && . /Users/dani/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]


# Added by Windsurf
export PATH="/Users/dani/.codeium/windsurf/bin:$PATH"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/dani/.lmstudio/bin"
# End of LM Studio CLI section

# Zoxide
eval "$(zoxide init zsh)"

# Starship
eval "$(starship init zsh)"
