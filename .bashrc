export PATH=/usr/local/Trolltech/Qt-4.8.0/bin/:/usr/local/texlive/2011/bin/x86_64-darwin/:$PATH
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS='GxBxCxfxcxdxdxhbadbxbx'
export KONOHA_PACKAGEPATH=/usr/local/konoha2/package
export CC=/usr/bin/gcc-4.2
#
#colors
export PS1="\u:\W$ "
export PS1="\u:\W\[\033[0;35m\]$ \[\033[0;37m\]"

export GIT_PS1_SHOWUPSTREAM=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWDIRTYSTATE=1

if [ -f /usr/local/etc/bash_completion.d/git/git-completion.bash ]; then
	source /usr/local/etc/bash_completion.d/git/git-completion.bash
	if [ -r "/usr/local/etc/bash_completion.d/git/git-completion.bash" ]; then
		PS1="\u:\W\[\033[0;37m\][\$(__git_ps1 "%s")]\[\033[0;36m\]$\[\033[0;37m\] "
	else
		PS1="\u:\W\[\033[0;37m\]$\[\033[0;36m\]$\[\033[0;37m\] "
	fi
fi

##command
##alias emacs=/Applications/Emacs.app/Contents/MacOS/Emacs
##alias mysql=/usr/local/mysql/bin/mysql
##alias svn='colorsvn'
#
alias l='ls'
alias rm='rm -i'
alias p='pwd'
alias restart='sudo shutdown -r now'
alias shutdown='sudo shutdown -h now'
alias updatedb='sudo /usr/libexec/locate.updatedb'
