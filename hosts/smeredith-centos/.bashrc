# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

export P4CONFIG=.p4config
export P4EDITOR=/usr/local/bin/vim
export PATH=$PATH:$HOME/.local/bin:$HOME/bin
export CLANGFORMAT_COMMAND="$HOME/tableau-cache/devtools/clang/3.9.0.161116193030/bin/clang-format"
export TAB_ROOT="$HOME/src/cpp3"
export RBT_CONFIG="$HOME/.reviewboardrc"

set -o vi
export PS1='\n[\D{%Y-%m-%d %H:%M:%S}] [\h] [\w]\n\$ '

alias tube="$TAB_ROOT/tableau-tools/pipeline/tube.py"
alias ttt="$HOME/src/bin/ttt.sh"
