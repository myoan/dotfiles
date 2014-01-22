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

map <c-a> ^
map <c-e> $
nnoremap j gj
nnoremap k gk
set ignorecase
set wildmode=longest:full,full

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
map <silent> ty :call YanktmpYank()<CR> 
map <silent> tp :call YanktmpPaste_p()<CR> 

" -------------------------------------------------- "
" [yankring config] "
let g:yankring_manual_clipboard_check=0
let g:yankring_history_dir = '~/.vim/tmp'

" -------------------------------------------------- "
" [Unite] "
"
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
" [vim-markdown] "
" 畳み込み禁止
let g:vim_markdown_folding_disabled=1 
