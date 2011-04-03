syntax enable

set nohlsearch

if has("gui_running")
  set cursorline
  map <M-left> b
  map <M-right> w
  map <C-S-left> <S-b>
  map <C-S-right> <S-w>
  set guioptions-=T
else
  map b b
  map f w
  map  0
  map  $
endif

inoremap ii <Esc>

map <C-c>f za
map <C-c>F zM
map <C-c><C-f> zR

map <S-right> :bnext!<CR>
map <S-left> :bprevious!<CR>
map <C-x>s :w<CR>


set list
set listchars=tab:>-,trail:.

set background=light
set nobackup
set backspace=2

set ruler
set number
set report=0

set matchpairs+=<:>
set showmatch

set mat=5

set incsearch
set ic scs " ignore case, smart case

set statusline=%F%m%r%h%w\ [%{&ff}\|%{&encoding}\|%Y]\ [A:\%03.3b\|H:\%02.2B]\ [%04l\|%04v,%p%%]\ [%L]
set laststatus=2

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set nowrap

set foldenable
set foldmethod=syntax

autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType php set autoindent smartindent

filetype plugin indent on
filetype indent on
set autoindent
set nocindent
set smartindent

" PHP config options
let PHP_default_indenting = 0
"let php_baselib = 1
let php_special_vars = 0
let php_special_functions = 0
let php_noShortTags = 1
let php_folding = 0
let php_strict_blocks = 0
let php_alt_comparisons = 0
let php_alt_assignByReference = 0
let php_show_spl = 0
let php_show_semicolon = 0
let php_show_pcre = 0
let php_smart_members = 0
let php_smart_semicolon = 0


" Delete buffer while keeping window layout (don't close buffer's windows).
" Version 2008-11-18 from http://vim.wikia.com/wiki/VimTip165
if v:version < 700 || exists('loaded_bclose') || &cp
finish
endif
let loaded_bclose = 1
if !exists('bclose_multiple')
let bclose_multiple = 1
endif

" Display an error message.
function! s:Warn(msg)
echohl ErrorMsg
echomsg a:msg
echohl NONE
endfunction

" Command ':Bclose' executes ':bd' to delete buffer in current window.
" The window will show the alternate buffer (Ctrl-^) if it exists,
" or the previous buffer (:bp), or a blank buffer if no previous.
" Command ':Bclose!' is the same, but executes ':bd!' (discard changes).
" An optional argument can specify which buffer to close (name or number).
function! s:Bclose(bang, buffer)
if empty(a:buffer)
let btarget = bufnr('%')
elseif a:buffer =~ '^\d\+$'
let btarget = bufnr(str2nr(a:buffer))
else
let btarget = bufnr(a:buffer)
endif
if btarget < 0
call s:Warn('No matching buffer for '.a:buffer)
return
endif
if empty(a:bang) && getbufvar(btarget, '&modified')
call s:Warn('No write since last change for buffer '.btarget.' (use :Bclose!)')
return
endif
" Numbers of windows that view target buffer which we will delete.
let wnums = filter(range(1, winnr('$')), 'winbufnr(v:val) == btarget')
if !g:bclose_multiple && len(wnums) > 1
call s:Warn('Buffer is in multiple windows (use ":let bclose_multiple=1")')
return
endif
let wcurrent = winnr()
for w in wnums
execute w.'wincmd w'
let prevbuf = bufnr('#')
if prevbuf > 0 && buflisted(prevbuf) && prevbuf != w
buffer #
else
bprevious
endif
if btarget == bufnr('%')
" Numbers of listed buffers which are not the target to be deleted.
let blisted = filter(range(1, bufnr('$')), 'buflisted(v:val) && v:val != btarget')
" Listed, not target, and not displayed.
let bhidden = filter(copy(blisted), 'bufwinnr(v:val) < 0')
" Take the first buffer, if any (could be more intelligent).
let bjump = (bhidden + blisted + [-1])[0]
if bjump > 0
execute 'buffer '.bjump
else
execute 'enew'.a:bang
endif
endif
endfor
execute 'bdelete'.a:bang.' '.btarget
execute wcurrent.'wincmd w'
endfunction
command! -bang -complete=buffer -nargs=? Bclose call <SID>Bclose('<bang>', '<args>')
nnoremap <silent> <Leader>bd :Bclose<CR>
nnoremap <silent> <Leader>bD :Bclose!<CR>

map <C-x>k :Bclose!<CR><CR>


set wildmode=longest,list,full

" eof
