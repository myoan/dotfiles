" ================================================== "
" [ vim setting configure ] "
" ================================================== "

" -------------------------------------------------- "
" [ config ] "
set encoding=utf-8
set number
set title
"set nowrap
set list
set listchars=tab:>-
set tabstop=4
set autoindent smartindent
set cursorline
set noswapfile

" -------------------------------------------------- "
" [ search config ] "
set hlsearch
nmap <Esc><Esc> :nohlsearch<Enter>

" -------------------------------------------------- "
" [ status line config ] "
set statusline=%n\:%y%F\ \|%{(&fenc!=''?&fenc:&enc).'\|'.&ff.'\|'}%m%r%=%l/%L
highlight StatusLine term=None cterm=None ctermfg=black ctermbg=gray
set laststatus=2

:map <c-a> ^
:map <c-e> $
nnoremap j gj
nnoremap k gk
" close search result
nmap <C-q> <C-w><C-w><C-w>q
" use gtags
nmap <c-g> :Gtags 
" move next search results.
nmap <C-n> :cn<CR>
" move previous search results.
nmap <C-p> :cp<CR>
":set transparency=5

" ================================================== "
" [ plugin configure ] "
" ================================================== "

" -------------------------------------------------- "
" [yanktmp config] "
map <silent> sy :call YanktmpYank()<CR> 
map <silent> sp :call YanktmpPaste_p()<CR> 

" -------------------------------------------------- "
" [yankring config] "
"let g:yankring_manual_clipboard_check=0

" -------------------------------------------------- "
" [Unite] "

" -------------------------------------------------- "
" [neocomplcache] "
source $HOME/.vim/startup/complcache.vim
