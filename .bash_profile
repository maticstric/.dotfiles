if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

export PATH=$PATH:$HOME/bin

# For react native
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

PS1='\[\e[0;33m\]\w\[\e[0m\] $ '

alias ls='ls -Gh'
alias tmux='tmux -2'

# Make a directory and cd to it
mcd() {
  test -d "$1" || mkdir "$1" && cd "$1"
}
