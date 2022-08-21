PROMPT='%F{yellow}%~ $%f '

# Show current git branch on right side
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git
precmd_functions+=(vcs_info)
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)'

# set vi-mode
set -o vi

alias ls="ls -Gh"

# personal scripts
export PATH=$PATH:$HOME/bin

# nvim
export PATH=$PATH:$HOME/bin/nvim-macos/bin/

# Created for ReactNative
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

function get_git_branch() {
  git branch 
}
