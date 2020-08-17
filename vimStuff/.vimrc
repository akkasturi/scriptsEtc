set nocompatible "must be first line
"My preferences
"map <S-PageUp> :set co=140<CR>:set lines=50<CR>
set shell=/bin/bash
set scrolloff=4
let g:miniBufExplMapCTabSwitchBufs = 1
set t_Co=256

" to make work mouse in screen
"set ttymouse=xterm2
"set mouse=a

"enable zenbur colorscheme with high contrash visual selection
"let g:zenburn_old_Visual = 1
"let g:zenburn_alternate_Visual=1
"colors zenburn
" ==================================================
" " Basic Settings
" " ==================================================
"let mapleader=","       " change the leader to be a comma vs slash

set wrap linebreak nolist
set ruler
set backspace=indent,eol,start
set expandtab
set is
set ts=4
set sw=2
set smarttab
set autoindent
set smartindent
set cindent
set nocompatible
set guifont=Monospace\ 12
"set ignorecase
filetype off

"set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words
set complete-=k complete+=k
syntax on

:set number
":colorscheme morning
":colorscheme desert

""" vim tabs
hi TabLineSel ctermfg=Red ctermbg=Yellow

set hlsearch
"hi Search guibg=DarkBlue
"hi Search guibg=peru guifg=wheat
"hi Search cterm=NONE ctermfg=grey ctermbg=blue

":set cursorline
hi CursorLine cterm=NONE,underline guibg=#F4F4F4 
:if has('gui_running')
 hi CursorLine term=bold cterm=bold guibg=Grey40
:else
 :colorscheme desert
:endif

:highlight Visual cterm=reverse ctermbg=NONE


"quickfix list window open/close function

let g:quickfix_is_open = 0

function! QuickfixToggle()
    if g:quickfix_is_open
        cclose
        let g:quickfix_is_open = 0
"        execute g:quickfix_return_to_window . "wincmd w"
    else
"        let g:quickfix_return_to_window = winnr()
        copen
        let g:quickfix_is_open = 1
    endif
endfunction


"quicfix list 
"leader is \ or ,
map <C-j> :cn<CR>
map <C-k> :cp<CR>
nnoremap <leader>q :call QuickfixToggle()<cr>

" <leader>ev opens vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

"F2 to save file
map <F2> <esc>:w! <CR>
"F4 save and quit
map <F4> <esc>:x! <CR>

"F2 to save file
imap <F2> <esc>:w! <CR>
"F4 save and quit
imap <F4> <esc>:x! <CR>

" NERD Tree
let g:NERDTreeDirArrows = 0
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" Maps for jj to act as Esc
ino jj <esc>
cno jj <c-c>

""" buffers
" show buffers list and select buffer
nnoremap <F5> :buffers<CR>:buffer<Space>
"move to next / prev buffer
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

"status line color
au InsertEnter * hi statusline guifg=black guibg=#d7afff ctermfg=black ctermbg=magenta
au InsertLeave * hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=cyan
hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=cyan
"hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=cyan

"set status line
set laststatus=2
set statusline=Buf:\%n\ \ %f\ %m\ %=\ [\%l\,\%c\/\%L\]\ %P\ \[%{strftime('%Y/%b/%d\ %a\ %I:%M\ %p')}\]

"macros
let @d = '0wdwxiVCM_DPE_LOG_UE_TRACE(pSession, DEBG, '
let @w = '0wdwxiVCM_DPE_LOG_UE_TRACE(pSession, WARN, '
let @n = '0wdwxiVCM_DPE_LOG_UE_TRACE(pSession, NOTI, '
let @i = '0wdwxiVCM_DPE_LOG_UE_TRACE(pSession, INFO, '
let @e = '0wdwxiVCM_DPE_LOG_DATA_UE_TRACE(pSession, DEBG, '
let @x = '0wdwxiVCM_DPE_LOG_DATA_UE_TRACE(pSession, WARN, '
let @o = '0wdwxiVCM_DPE_LOG_DATA_UE_TRACE(pSession, NOTI, '
let @j = '0wdwxiVCM_DPE_LOG_DATA_UE_TRACE(pSession, INFO, '

