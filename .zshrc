PROMPT='%B%F{240}%1~%f%b %# '

HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history

source /usr/local/share/antigen/antigen.zsh
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle marlonrichert/zsh-autocomplete
antigen apply

alias sudo='sudo '
alias dc='docker-compose'
