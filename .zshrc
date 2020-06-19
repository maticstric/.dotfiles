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

# Created by `userpath` on 2020-02-12 03:57:33
# For StandardEbooks
export PATH=$PATH:/Users/matic/.local/bin

function get_git_branch() {
  git branch 
}
