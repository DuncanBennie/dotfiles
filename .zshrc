# PROMPT CUSTOMISATION
PROMPT='%B%F{240}%1~%f%b %# '

# HISTORY SETTINGS
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history

# CHECK OS TO DETERMINE WHERE TO FIND ANTIGEN
case "$(uname -s)" in
   Darwin)
	source /usr/local/share/antigen/antigen.zsh
	;;
   Linux)
	source /usr/share/zsh-antigen/antigen.zsh
	;;
esac

# ANTIGEN PLUGINS
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle marlonrichert/zsh-autocomplete
antigen apply

# ALIASES
alias sudo='sudo '
alias beetimport='docker exec -u abc -it beets /bin/bash -c "beet import /downloads"'
alias dc='docker-compose'
