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
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'Keithbsmiley/rspec.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'

" [vim.org plugins] "
NeoBundle 'yanktmp.vim'
NeoBundle 'YankRing.vim'
NeoBundle 'sudo.vim'

" [row plugins] "
"NeoBundle 'global/gtags.vim'
"NeoBundle 'vimperator'

filetype plugin on
filetype indent on
