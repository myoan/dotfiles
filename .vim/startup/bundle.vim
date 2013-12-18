" ---------------------------------------------------- "
" [pulgin manegement plugin: neobundle] "
" ---------------------------------------------------- "

filetype off
if has('vim_starting')
	set runtimepath+=$HOME/.vim/bundle/neobundle.vim
	call neobundle#rc(expand('~/.vim/bundle/'))
endif

NeoBundleFetch 'Shougo/neobundle.vim'

" [git plugins] "
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'thinca/vim-quickrun'

" [vim.org plugins] "
NeoBundle 'yanktmp.vim'
NeoBundle 'YankRing.vim'
NeoBundle 'sudo.vim'

" [row plugins] "
"NeoBundle 'global/gtags.vim'
"NeoBundle 'vimperator'

filetype plugin on
filetype indent on
