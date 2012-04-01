export PATH=/usr/local/Trolltech/Qt-4.8.0/bin/:/usr/local/texlive/2011/bin/x86_64-darwin/:$PATH
#export EDITOR='vim'
#export MANPATH=/opt/local/man:$MANPATH
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS='GxBxCxfxcxdxdxhbadbxbx'
#export LD_LIBRARY_PATH=/opt/local/lib:$LD_LIBRARY_PATH
##export VIMRUNTIME='/usr/share/vim/vim72'
export k='/Users/yoan/D/konoha/konoha'
#export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:/opt/local/lib/pkgconfig/:/usr/X11/lib/pkgconfig
export CC=/usr/bin/gcc-4.2
#
#colors
export PS1="\u:\W$ "
export PS1="\u:\W\[\033[0;35m\]$ \[\033[0;37m\]"

# bash-completion config
#if [ -f /usr/local/etc/bash_completion.d/git/git-completion.bash ]; then
#	source /usr/local/etc/bash_completion.d/git/git-completion.bash
#	if [ -r "/usr/local/etc/bash_completion.d/git/git-completion.bash" ]; then
#		PS1="\u:\W\[\033[1;32m\] $(__git_ps1 "[%s]")\[\033[0;35m\]$\[\033[0;37m\] "
#	else
#		PS1="\u:\W\[\033[0;35m\]$ \[\033[0;37m\]"
#	fi
#fi

export GIT_PS1_SHOWUPSTREAM=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWDIRTYSTATE=1

if [ -f /usr/local/etc/bash_completion.d/git/git-completion.bash ]; then
	source /usr/local/etc/bash_completion.d/git/git-completion.bash
	if [ -r "/usr/local/etc/bash_completion.d/git/git-completion.bash" ]; then
		PS1="\u:\W\[\033[1;34m\][\$(__git_ps1 "%s")]\[\033[0;35m\]$\[\033[0;37m\] "
	else
		PS1="\u:\W\[\033[0;35m\]$\[\033[0;35m\]$\[\033[0;37m\] "
	fi
fi

##command
##alias screen=$HOME/local/bin/screen-4.1.0
##alias libtool=$HOME/share/libtool-2.2.10/bin/libtool
##alias dbgconf='./configure CFLAGS="-g3 -O0" --enable-debug'
##alias emacs=/Applications/Emacs.app/Contents/MacOS/Emacs
##alias mysql=/usr/local/mysql/bin/mysql
#alias gvi=mvim
##alias svn='colorsvn'
#
#alias l='ls'
#alias rm='rm -i'
#alias u='cd ..; pwd'
#alias p='pwd'
#alias restart='sudo shutdown -r now'
#alias shutdown='sudo shutdown -h now'
alias updatedb='sudo /usr/libexec/locate.updatedb'
#
##ssh
##alias tesla='ssh tsunade@192.168.59.201'
##alias aspen='ssh yoan@133.34.30.191'
###alias aspen='ssh tsunade@133.34.30.191'
##alias build='ssh tsunade@192.168.59.205'
##alias mono='ssh yoan@192.168.59.45'
##alias yokohama='ssh yoan@www.ubicg.ynu.ac.jp'
##alias monster='ssh yoan@192.168.59.201'
##alias ynu='ssh d11gd181@unixedu.ynu.ac.jp -p 31856'
