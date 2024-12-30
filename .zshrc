# Disable vi mode [-e], to enable [-v], default always works Emacs mode
bindkey -v

# Enable autocomplete
autoload -Uz compinit && compinit

# Personal colors to completion menu
source ~/.lsd-colors.sh

# Completion config
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LSD_COLORS}
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

  # History configurations
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# env
export VISUAL=nvim;
export EDITOR=nvim;
export SUDO_PROMPT="passwd: "

# source plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-sudo/zsh-sudo.zsh

# Alias
alias ls='lsd --group-dirs=first'
alias cat='bat --theme=OneHalfDark -P -p'
alias catp='bat --theme=OneHalfDark -p'
alias catn='bat --theme=OneHalfDark --style=numbers'
alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias lt="ls --tree"
alias grep="grep --color=auto"

# Starship configurations
export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml
eval "$(starship init zsh)"
