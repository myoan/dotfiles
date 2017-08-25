" ================================================== "
" [ vim setting configuration ] "
" ================================================== "

" -------------------------------------------------- "
" [ configuration ] "
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
set ignorecase
set wildmode=longest:full,full

" コマンドラインモードでTABキーによるファイル名補完を有効にする
set wildmenu wildmode=list:longest,full
" コマンドラインの履歴を10000件保存する
set history=10000
filetype plugin on

highlight SpecialKey ctermfg=lightgray                " タブの色
highlight NonText ctermfg=darkgray                    " 改行の色
highlight ZenkakuSpace cterm=underline ctermfg=white  " 全角スペースの色
match ZenkakuSpace /　/

nnoremap Y y$
set display=lastline
set showmatch
set matchtime=1

" -------------------------------------------------- "
" [ macvim configuration ] "

if has('gui_macvim')
    set transparency=3
    set guioptions=c
    set guifont=MesloLGSDZ-RegularForPowerline:h9
    set lines=9999 columns=9999
    " open macvim at full screen mode
    "autocmd BufEnter * macaction performZoom:
    " カーソルが一番上や下に移動した時のビープ音を消す＆画面フラッシュも消す
    set vb t_vb=
    let $PYTHON3_DLL="$HOME/.pyenv/shims/python"
endif

" -------------------------------------------------- "
" [ js configuration ] "
autocmd FileType javascript setl ts=2
autocmd FileType javascript setl expandtab
autocmd FileType javascript setl shiftwidth=2
autocmd FileType javascript noremap <buffer> <C-m> :<C-u>!/usr/local/bin/gjslint %<cr>
" -------------------------------------------------- "
" [ ruby configuration ] "
autocmd FileType ruby setl expandtab
autocmd FileType ruby setl shiftwidth=2
autocmd FileType ruby setl ts=2

" -------------------------------------------------- "
" [ ruby configuration ] "
autocmd FileType ruby setl ts=2
autocmd FileType ruby setl expandtab
autocmd FileType ruby setl shiftwidth=2

" -------------------------------------------------- "
" [ perl configuration ] "
autocmd FileType perl setl ts=4
autocmd FileType perl setl expandtab
autocmd FileType perl setl shiftwidth=4

" -------------------------------------------------- "
" [ go configuration ] "
autocmd FileType go setl ts=2
autocmd FileType go setl shiftwidth=2

" -------------------------------------------------- "
" [ search configuration ] "
set hlsearch
nmap <Esc><Esc> :nohlsearch<Enter>

" -------------------------------------------------- "
" [ status line configuration ] "
set statusline=%n\:%y%F\ \|%{(&fenc!=''?&fenc:&enc).'\|'.&ff.'\|'}%m%r%=%l/%L
highlight StatusLine term=None cterm=None ctermfg=black ctermbg=gray
set laststatus=2

" ================================================== "
" [ plugin configuration ] "
" ================================================== "

" -------------------------------------------------- "
" [yankround configuration] "
let g:yankround_max_history = 10000
nmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap gp <Plug>(yankround-gp)
nmap gP <Plug>(yankround-gP)
nmap <C-p> <Plug>(yankround-prev)
nmap <C-n> <Plug>(yankround-next)

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
" [ctrlp] "

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_map = '<c-b>'
let g:ctrlp_cmd = 'CtrlP'
map <C-c> :CtrlPClearCache<CR>
map <C-l> :CtrlPLine<CR>
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:100,results:100'
"let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}

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

" -------------------------------------------------- "
" [syntax check] "

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 0
"let g:syntastic_auto_loc_list            = 1
"let g:syntastic_ruby_rubocop_exec = "/Users/motoki.yoan/.rbenv/versions/2.0.0-p481/bin/rubocop .ruby-style.yml"
"let g:syntastic_mode_map = {
"    \ "mode": "active",
"    \"active_filetypes": ["ruby"],
"    \"passive_filetypes": [] }
"let g:syntastic_ruby_checkers = ["rubocop"]

" -------------------------------------------------- "
" [watchdogs] "
"
"let g:quickrun_config = {
"\  "ruby/watchdogs_checker" : {
"\    "type" : "watchdogs_checker/rubocop"
"\  },
"\  "watchdogs_checker/rubocop" : {
"\    "cmdopt" : "-c .ruby-style.yml"
"\  },
"\}
"
"" 書き込み後にシンタックスチェックを行う
"let g:watchdogs_check_BufWritePost_enables = {
"\   "ruby"     : 1,
"\}
"
"call watchdogs#setup(g:quickrun_config)


" -------------------------------------------------- "
" [vim airline] "

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline_theme = 'molokai'
"au VimEnter * AirlineTheme powerlineish

" -------------------------------------------------- "
" [vim-expand-region] "
"
"map K <Plug>(expand_region_expand)
"map J <Plug>(expand_region_shrink)

" -------------------------------------------------- "
" [spell check] "

:set spell
:set spelllang=en,cjk

fun! s:SpellConf()
  redir! => syntax
  silent syntax
  redir END

  set spell

  if syntax =~? '/<comment\>'
    syntax spell default
    syntax match SpellMaybeCode /\<\h\l*[_A-Z]\h\{-}\>/ contains=@NoSpell transparent containedin=Comment contained
  else
    syntax spell toplevel
    syntax match SpellMaybeCode /\<\h\l*[_A-Z]\h\{-}\>/ contains=@NoSpell transparent
  endif

  syntax cluster Spell add=SpellNotAscii,SpellMaybeCode
endfunc

augroup spell_check
  autocmd!
  autocmd BufReadPost,BufNewFile,Syntax * call s:SpellConf()
augroup END
