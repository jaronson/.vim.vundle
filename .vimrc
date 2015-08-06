set nocompatible
filetype off

"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

"call vundle#end()

filetype plugin indent on
syntax enable

set t_Co=256
set noerrorbells
set showmatch
set expandtab
set tabstop=2
set shiftwidth=2
set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set number
set nowrap
set ruler
set hls
set incsearch
set laststatus=2
set synmaxcol=480
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set list " show trailing whiteshace and tabs
set showmatch
set autoindent
set copyindent
set wildignore=*.swp,*.bak,*.pyc
set pastetoggle=<F2>
set splitbelow
set splitright
set colorcolumn=80

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
end

nmap <silent> <leader>c :tabnew<CR>
nmap <silent> <leader>t :tabnext<CR>
nmap <silent> <leader>p :tabprev<CR>
nmap <silent> <leader>/ :nohlsearch<CR>

map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-n> :tabnew<CR>

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /^[^:]*:<CR>
vmap <Leader>a: :Tabularize /^[^:]*:<CR>
nmap <Leader>a. :Tabularize /=><CR>
vmap <Leader>a. :Tabularize /=><CR>
nmap <Leader>a{ :Tabularize / \zs{<CR>
vmap <Leader>a{ :Tabularize / \zs{<CR>
nmap <Leader>as :Tabularize /\S\+<CR>
vmap <Leader>as :Tabularize /\S\+<CR>

nmap <Leader>m :MRU<CR>
vmap <Leader>m :MRU<CR>

nmap <Leader>et Iexpect(<ESC>A).to 
nmap <Leader>ete Iexpect(<ESC>A).to eq()<ESC>i
nmap <Leader>it Iit '<ESC>A' do<CR>
nmap <Leader>jb :call JsBeautify()<cr>

nmap <Leader>f :CtrlP<CR>
