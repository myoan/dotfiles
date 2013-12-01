" ---------------------------------------------------- "
" [pulgin manegement plugin: neobundle] "
" ---------------------------------------------------- "

filetype off
if has('vim_starting')
	set runtimepath+=$HOME/.vim/bundle/neobundle.vim
	call neobundle#rc(expand('~/.vim/bundle/'))
endif

let g:neobundle_default_git_protocol='git'
NeoBundleFetch 'Shougo/neobundle.vim'

" [git plugins] "
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Lokaltog/vim-powerline'
"NeoBundle 'Shougo/vimshell'

" [vim.org plugins] "
NeoBundle 'yanktmp.vim'
NeoBundle 'YankRing.vim'
NeoBundle 'sudo.vim'

" [row plugins] "
NeoBundle 'global/gtags.vim'
"NeoBundle 'vimperator'

filetype plugin on
filetype indent on
