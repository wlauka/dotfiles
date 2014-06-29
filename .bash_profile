source ~/.dotfiles/.git-prompt.sh


export PS1="\[\e[36;1m\]\u\[\e[0m\]\[\e[32m\]@\h\[\e[36m\]\w$(__git_ps1 " (%s)") \[\e[33m\]\$ \[\e[0m\]"

export PATH=/usr/local/share/npm/bin:$PATH              # add node to $PATH
export PATH=$HOME/bin:$PATH                             # add home dir to $PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH        # add macports to $PATH

export TERM=xterm-256color
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad
export LSOPTIONS='--color=auto'
export EDITOR=vim

alias nw="/Applications/node-webkit.app/Contents/MacOS/node-webkit"
alias ll='ls -lah'
alias ls='ls -Gfh'


function runPythonServer(){                             # spin up HTTP Server
    python -m SimpleHTTPServer $1
}
alias server=runPythonServer                           

function tabname {                                      # name OSX Terminal tabs
    printf "\e]1;$1\a"
}
