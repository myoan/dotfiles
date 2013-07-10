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
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimproc'
"NeoBundle 'Shougo/vimshell'

" [vim.org plugins] "
NeoBundle 'yanktmp.vim'
NeoBundle 'YankRing.vim'
NeoBundle 'sudo.vim'
"NeoBundle 'surround.vim'

" [row plugins] "
NeoBundle 'global/gtags.vim'
NeoBundle 'vim-latex'
"NeoBundle 'vimperator'

filetype plugin on
filetype indent on
