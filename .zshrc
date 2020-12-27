PROMPT='%B%F{240}%1~%f%b %# '

HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history

source /usr/share/zsh-antigen/antigen.zsh
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions

antigen apply

alias sudo='sudo '
alias dc='docker-compose'
