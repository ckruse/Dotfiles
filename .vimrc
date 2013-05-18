" -*- coding: utf-8 -*-

execute pathogen#infect()

set background=dark
set hidden

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

if has('gui_running')
  colorscheme Tomorrow-Night-Eighties
  set guifont=Source\ Code\ Pro:h13
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
else
  colorscheme Tomorrow-Night-Eighties
endif

set number

set nocompatible
set autoindent

set nobackup
set noundofile

set fileformats=unix,dos,mac

set incsearch       " Incremental search
set laststatus=2    " Always show status line
set lazyredraw

let &listchars = "tab:\u21e5\u00b7,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u26ad"
let &fillchars = "vert:\u259a,fold:\u00b7"

set modeline
set modelines=5     " Debian likes to disable this
set pastetoggle=<F2>
set scrolloff=1
set showcmd         " Show (partial) command in status line.
set showmatch       " Show matching brackets.
set smartcase       " Case insensitive searches become sensitive with capitals
set smarttab        " sw at the start of the line, sts everywhere else

set showmatch
set incsearch
set ic scs " ignore case, smart case

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set nowrap

set wildmode=longest,list,full


function! SL(function)
  if exists('*'.a:function)
    return call(a:function,[])
  else
    return ''
  endif
endfunction

set statusline=[%n]\|%{&encoding}\|\ %<%.99f\ %h%w%m%r%{SL('CapsLockStatusline')}%y%{SL('fugitive#statusline')}%#ErrorMsg#%{SL('SyntasticStatuslineFlag')}%*%=%-14.(%l,%c%V%)\ %P

set visualbell

set autoread
set foldmethod=marker



