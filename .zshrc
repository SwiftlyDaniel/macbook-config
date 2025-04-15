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


## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/dani/.dart-cli-completion/zsh-config.zsh ]] && . /Users/dani/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]