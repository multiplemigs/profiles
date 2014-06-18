# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

export LSCOLORS='gxBxhxDxfxhxhxhxhxcxcx'
export EDITOR="vim"

export PS1="\[\e[0;32m\][\u\[\e[m\]\[\e[0;38m\]@\[\e[m\]\[\e[1;35m\]\h\[\e[m\] \[\e[0;33m\]\W\[\e[m\]\[\e[0;32m\]]$ \[\e[m\]"
export SUDO_PS1="\[\e[1;31m\][\u\[\e[m\]\[\e[0;38m\]@\[\e[m\]\[\e[1;35m\]\h\[\e[m\] \[\e[0;33m\]\W\[\e[m\]\[\e[1;31m\]]$ \[\e[m\]"

# Xfinity Home stuff.
WLS_LOGDIR="/home/weblogic/Oracle/Middleware/user_projects/domains/*o*/servers/*Server*/logs/"
alias cld="cd $WLS_LOGDIR"

source ~/.profile
export PATH=/usr/local/bin:$PATH

function h() {
	if [ -z "$1" ]
	then
		history
	else
		history | grep "$@"
	fi
}
