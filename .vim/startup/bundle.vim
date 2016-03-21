" ---------------------------------------------------- "
" [pulgin manegement plugin: neobundle] "
" ---------------------------------------------------- "

filetype off
if has('vim_starting')
  set runtimepath+=$HOME/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle/'))
  NeoBundleFetch 'Shougo/neobundle.vim'
  call neobundle#end()
endif

let g:neobundle_default_git_protocol='git'
NeoBundleFetch 'Shougo/neobundle.vim'

" [git plugins] "
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'Keithbsmiley/rspec.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'alpaca-tc/alpaca_tags'
NeoBundle 'LeafCage/yankround.vim'
NeoBundle 'rking/ag.vim'
NeoBundle 'vim-scripts/cmdalias.vim'
NeoBundle 'fatih/vim-go.git'
NeoBundle 'bling/vim-airline'
"NeoBundle 'scrooloose/syntastic'
"NeoBundle 'thoughtbot/vim-rspec'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

NeoBundle 'osyo-manga/shabadou.vim'
NeoBundle 'osyo-manga/vim-watchdogs'
NeoBundle 'jceb/vim-hier'
NeoBundle 'codegram/vim-codereview'
NeoBundle 'rhysd/committia.vim'
NeoBundle 'kchmck/vim-coffee-script'

" [vim.org plugins] "
NeoBundle 'sudo.vim'

filetype plugin on
filetype indent on
