# Set prompt: "username@hostname/directory/tree $ " (with colors)
export PS1="\[\e[32;1m\]\u\[\e[0m\]\[\e[32m\]@\h\[\e[36m\]\w \[\e[33m\]\$ \[\e[0m\]"

export CLICOLOR=1;
export LSCOLORS=exfxcxdxbxegedabagacad;

export EDITOR=vim

export PATH=/usr/local/share/npm/bin:$PATH              # add node to $PATH
export PATH=$HOME/bin:$PATH                             # add home dir to $PATH
export PATH=/opt/local/bin:/opt/local/sbin:$PATH        # add macports to $PATH


alias nw="/Applications/node-webkit.app/Contents/MacOS/node-webkit"

runPythonServer(){
    python -m SimpleHTTPServer $1
}
alias server=runPythonServer                            # spin up HTTP Server

