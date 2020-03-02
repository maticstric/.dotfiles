if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

export PATH=$PATH:$HOME/bin

PS1='\[\e[0;33m\]\w\[\e[0m\] $ '

alias tmux='tmux -2'
