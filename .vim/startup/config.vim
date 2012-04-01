" ================================================== "
" [ vim setting configure ] "
" ================================================== "

" -------------------------------------------------- "
" [ config ] "
set encoding=utf-8
set number
set title
"set expandtab
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:$
set ts=4
set shiftwidth=4
set autoindent smartindent
set cursorline
set noswapfile

map <c-a> ^
map <c-e> $
nnoremap j gj
nnoremap k gk

" -------------------------------------------------- "
" [ search config ] "
set hlsearch
nmap <Esc><Esc> :nohlsearch<Enter>

" -------------------------------------------------- "
" [ status line config ] "
set statusline=%n\:%y%F\ \|%{(&fenc!=''?&fenc:&enc).'\|'.&ff.'\|'}%m%r%=%l/%L
highlight StatusLine term=None cterm=None ctermfg=black ctermbg=gray
set laststatus=2

" ================================================== "
" [ plugin configure ] "
" ================================================== "

" -------------------------------------------------- "
" [global config] "
" close search result
nmap <C-q> <C-w><C-w><C-w>q
" use gtags
nmap <c-g> :Gtags 
" move next search results.
"nmap <C-n> :cn<CR>
" move previous search results.
"nmap <C-p> :cp<CR>
":set transparency=5

" -------------------------------------------------- "
" [yanktmp config] "
map <silent> sy :call YanktmpYank()<CR> 
map <silent> sp :call YanktmpPaste_p()<CR> 

" -------------------------------------------------- "
" [yankring config] "
let g:yankring_manual_clipboard_check=0

" -------------------------------------------------- "
" [Unite] "
"
" -------------------------------------------------- "
" [vim-latex] "
" REQUIRED. This makes vim invoke latex-suite when you open a tex file.
filetype plugin on
"
" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse latex-suite. Set your grep
" program to alway generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" 各自の環境に合わせた .tex ファイルを dvi ファイルにコンパイルするコマンドに，適宜置き換えてください． (Vine Linux 3.1 の場合)
let g:Tex_CompileRule_dvi = 'platex $*'

" 同様に，dvi ファイルのビューワー
let g:Tex_ViewRule_dvi = 'xdvi'

" -------------------------------------------------- "
" [neocomplcache] "
source $HOME/.vim/startup/complcache.vim
