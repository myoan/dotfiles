#!/bin/sh

isClient="false"

usage () {
	echo "Usage:"
	echo "./install.sh"
	echo "if you install dotfiles in client machine:"
	echo "./install.sh -c"
}

while getopts c: opt
do
	case $opt in
		'c')
			isClient="true"
			;;
		'*')
			usage
	esac
done

DOTFILES_PATH=`pwd`
cd $HOME

ln -s $DOTFILES_PATH/.git .
ln -s $DOTFILES_PATH/.gitconfig .
ln -s $DOTFILES_PATH/.gitignore .
ln -s $DOTFILES_PATH/.gitmodules .
ln -s $DOTFILES_PATH/.vim .
ln -s $DOTFILES_PATH/.vimrc .
ln -s $DOTFILES_PATH/.tmux.conf .
ln -s $DOTFILES_PATH/.zshrc .

if [ $isClient = "true" ]; then
	ln -s $DOTFILES_PATH/.vimperator .
	ln -s $DOTFILES_PATH/.vimperatorrc .
fi

cd $HOME/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim.git
vim +":NeoBundleInstall" +:q
cd $HOME/.vim/
ln -s bundle/neosnippet-snippets/neosnippets .
