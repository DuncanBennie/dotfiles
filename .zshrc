PROMPT='%B%F{240}%1~%f%b %# '

HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history

case "$(uname -s)" in
   Darwin)
	source /usr/local/share/antigen/antigen.zsh
	;;
   Linux)
	source /usr/share/zsh-antigen/antigen.zsh
	;;
esac

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle marlonrichert/zsh-autocomplete
antigen apply

alias sudo='sudo '
alias dc='docker-compose'
