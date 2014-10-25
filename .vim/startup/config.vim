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
set ts=2
set shiftwidth=2
set expandtab
set autoindent smartindent
set noswapfile
set laststatus=2
set t_Co=256

map <c-a> ^
map <c-e> $
nnoremap j gj
nnoremap k gk
set ignorecase
set wildmode=longest:full,full

" コマンドラインモードでTABキーによるファイル名補完を有効にする
set wildmenu wildmode=list:longest,full
" コマンドラインの履歴を10000件保存する
set history=10000
filetype plugin on

" -------------------------------------------------- "
" [ js config ] "
autocmd FileType javascript setl ts=2
autocmd FileType javascript setl expandtab
autocmd FileType javascript setl shiftwidth=2
autocmd FileType javascript noremap <buffer> <C-m> :<C-u>!/usr/local/bin/gjslint %<cr>
" -------------------------------------------------- "
" [ ruby config ] "
autocmd FileType ruby setl expandtab
autocmd FileType ruby setl shiftwidth=2
autocmd FileType ruby setl ts=2

" -------------------------------------------------- "
" [ ruby config ] "
autocmd FileType ruby setl ts=2
autocmd FileType ruby setl expandtab
autocmd FileType ruby setl shiftwidth=2

" -------------------------------------------------- "
" [ perl config ] "
autocmd FileType perl setl ts=4
autocmd FileType perl setl expandtab
autocmd FileType perl setl shiftwidth=4

" -------------------------------------------------- "
" [ search config ] "
set hlsearch
nmap <Esc><Esc> :nohlsearch<Enter>

" -------------------------------------------------- "
" [ status line config ] "
set statusline=%n\:%y%F\ \|%{(&fenc!=''?&fenc:&enc).'\|'.&ff.'\|'}%m%r%=%l/%L
highlight StatusLine term=None cterm=None ctermfg=black ctermbg=gray
set laststatus=2

" -------------------------------------------------- "
" [ window operation config ] "
nnoremap <C-f> <Nop>
nmap <C-f>s :split<CR>
nmap <C-f>v :vsplit<CR>
nnoremap <C-f>j <C-w>j
nnoremap <C-f>k <C-w>k
nnoremap <C-f>l <C-w>l
nnoremap <C-f>h <C-w>h
nnoremap <C-f><C-J> <C-w>J
nnoremap <C-f><C-K> <C-w>K
nnoremap <C-f><C-L> <C-w>L
nnoremap <C-f><C-H> <C-w>H

" ================================================== "
" [ plugin configure ] "
" ================================================== "

" -------------------------------------------------- "
" [global config] "
" close search result
"nmap <C-q> <C-w><C-w><C-w>q
" use gtags
"nmap <c-g> :Gtags 
" move next search results.
"nmap <C-n> :cn<CR>
" move previous search results.
"nmap <C-p> :cp<CR>
":set transparency=5

" -------------------------------------------------- "
" [yanktmp config] "
map <silent> ty :call YanktmpYank()<CR> 
map <silent> tp :call YanktmpPaste_p()<CR> 

" -------------------------------------------------- "
" [yankring config] "
let g:yankring_manual_clipboard_check=0
let g:yankring_history_dir = '~/.vim/tmp'

" -------------------------------------------------- "
" [Unite] "
"let g:unite_enable_split_vertically=1
nnoremap [unite] <Nop>
let g:unite_enable_start_insert=1
"map <Leader>u [unite]
noremap <C-f><C-n> :<C-u>Unite buffer<Space>

" show buffer
noremap <C-f><C-b> :Unite buffer -buffer-name=file<CR>
noremap <C-f><C-b><C-v> :Unite buffer vsplitswitch -buffer-name=file<CR>
noremap <C-f><C-b><C-s> :Unite buffer splitswitch -buffer-name=file<CR>

" show file from current dir
noremap <C-f><C-f> :Unite file -buffer-name=file<CR>
noremap <C-f><C-f><C-v> :Unite file vsplitswitch -buffer-name=file<CR>
noremap <C-f><C-f><C-s> :Unite file splitswitch -buffer-name=file<CR>

" show file history
noremap <C-f><C-h> :Unite file_mru -buffer-name=file<CR>
noremap <C-f><C-h><C-v> :Unite file_mru vsplitswitch -buffer-name=file<CR>
noremap <C-f><C-h><C-s> :Unite file_mru splitswitch -buffer-name=file<CR>

au FileType unite nnoremap <silent> <buffer> <ESC><ESC> q
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>q
"nnoremap <silent> [unite]f :<C-u>Unite<Space>buffer<CR>

" -------------------------------------------------- "
" [neocomplcache] "
source $HOME/.vim/startup/complcache.vim

" -------------------------------------------------- "
" [neosnippet] "

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
  endif

let g:neocomplcache_snippets_dir = '~/.vim/neosnippets'

" -------------------------------------------------- "
" [vim-rspec] "

let g:rspec_runner = "os_x_iterm"
let g:rspec_command = "bundle exec rspec"

map <C-t><C-t> :call RunCurrentSpecFile()<CR>
map <C-t><C-s> :call RunNearestSpec()<CR>
map <C-t><C-l> :call RunLastSpec()<CR>
map <C-t><C-a> :call RunAllSpecs()<CR>

" -------------------------------------------------- "
" [ctlp] "

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" -------------------------------------------------- "
" [quick-run] "

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


" -------------------------------------------------- "
" [fugitive] "
" git status
nmap <c-g>s :Gstatus<cr>
" git add
nmap <c-g>a :Gwrite<cr>
" git commit
nmap <c-g>ci :Gcommit<cr>
" git diff
nmap <c-g>d :Gdiff<cr>
