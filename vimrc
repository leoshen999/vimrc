" General settings
syntax on
filetype plugin indent on
let $LANG='en_US'
let mapleader = " "
" Workaround Win32 backslash in filepath issue
let s:myVimDir = substitute(fnamemodify($MYVIMRC, ':p:h'), '\', '/', 'g')

set langmenu=en_US
set encoding=utf-8
set nocompatible
set noswapfile
set t_Co=256
set number
set showcmd
set wildmenu
set tabstop=2
set shiftwidth=2
set backspace=2
set smarttab
set expandtab
set autoindent
set showmatch
set ignorecase
set tabpagemax=1000
set hlsearch
set incsearch
set list
set listchars=tab:\|\ ,trail:.
set foldmethod=indent
set foldlevelstart=99999
set cursorcolumn
set cursorline
set colorcolumn=80
set mouse=a
set guioptions-=L
set guioptions-=e
set guioptions-=m
set guioptions-=T
set showtabline=2
set virtualedit=onemore
set laststatus=2
set pastetoggle=<F2>
set whichwrap+=<,>,[,]

" colorcolumn should be 72 for gitcommit
function! OnSynxtaxIsSet()
  if &syntax == "gitcommit"
    setlocal colorcolumn=72
  endif
endfunction
au Syntax * call OnSynxtaxIsSet()

" Just forget what this is for
if !has("gui_running")
  set term=xterm
  let &t_AB="\e[48;5;%dm"
  let &t_AF="\e[38;5;%dm"
  inoremap <Char-0x07F> <BS>
  nnoremap <Char-0x07F> <BS>
endif

" Shortcuts
nnoremap <C-PageDown> :tabnext<cr>
nnoremap <C-PageUp> :tabprevious<cr>
nnoremap <C-Left> <C-W>h
nnoremap <C-Down> <C-W>j
nnoremap <C-Up> <C-W>k
nnoremap <C-Right> <C-W>l
nnoremap <leader>te :$tabnew<cr>
nnoremap <leader>tq :tabclose<cr>
nnoremap <leader>v :vsp<cr>
nnoremap <leader>s :sp<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>e :e 
nnoremap <leader>b :b#<cr>
nnoremap <leader>n :echo expand('%:p')<cr>
nnoremap <leader>dt :difft<cr>
nnoremap <leader>do :diffo<cr>
if has('terminal')
  nnoremap <leader>tm :terminal<cr>
  tnoremap <C-PageDown> <C-W>:tabnext<cr>
  tnoremap <C-PageUp> <C-W>:tabprevious<cr>
  tnoremap <C-Left> <C-W>h
  tnoremap <C-Down> <C-W>j
  tnoremap <C-Up> <C-W>k
  tnoremap <C-Right> <C-W>l
endif
" Not really used now
"nnoremap <leader>cd :cd %:p:h<cr>:pwd<cr>
"nnoremap <C-J> Lzz
"nnoremap <C-K> Hzz

" Change viminfo location
exec 'set viminfo+=n'.s:myVimDir.'/viminfo'

" Change font on Win32 gVim
if has("gui_running") && has("gui_win32")
  set guifont=Consolas:h8:cANSI
endif

" Load my custom color scheme
exec 'source '.s:myVimDir.'/color.vim'

" Enhance color column color for better visibility when needed
function! ToggleColorColumnEnhancement()
  if !exists('g:colorColumnEnhancement')
    let g:colorColumnEnhancement = 0
  else
    let g:colorColumnEnhancement = !g:colorColumnEnhancement
  endif
  if g:colorColumnEnhancement
    hi ColorColumn term=NONE cterm=NONE ctermfg=NONE ctermbg=52 gui=NONE guifg=NONE guibg=#5f0000
  else
    hi ColorColumn term=NONE cterm=NONE ctermfg=NONE ctermbg=232 gui=NONE guifg=NONE guibg=#080808
  endif
endfunction
call ToggleColorColumnEnhancement()
nnoremap <F11> :call ToggleColorColumnEnhancement()<CR>

" Effect of normal/insert mode
function! EnterInsertMode(mode)
  set ttimeoutlen=1
  if a:mode == 'i'
    hi CursorColumn term=NONE cterm=NONE ctermfg=NONE ctermbg=17 gui=NONE guifg=NONE guibg=#00005f
    hi CursorLine term=NONE cterm=NONE ctermfg=NONE ctermbg=17 gui=NONE guifg=NONE guibg=#00005f
  else
    hi CursorColumn term=NONE cterm=NONE ctermfg=NONE ctermbg=52 gui=NONE guifg=NONE guibg=#5f0000
    hi CursorLine term=NONE cterm=NONE ctermfg=NONE ctermbg=52 gui=NONE guifg=NONE guibg=#5f0000
  endif
endfunction
function! EnterNormalMode()
  set ttimeoutlen=-1
  hi CursorLine term=NONE cterm=NONE ctermfg=NONE ctermbg=234 gui=NONE guifg=NONE guibg=#1c1c1c
  hi CursorColumn term=NONE cterm=NONE ctermfg=NONE ctermbg=234 gui=NONE guifg=NONE guibg=#1c1c1c
endfunction
au InsertEnter * call EnterInsertMode(v:insertmode)
au InsertChange * call EnterInsertMode(v:insertmode)
au InsertLeave * call EnterNormalMode()
ino <C-C> <ESC>
call EnterNormalMode()

" Effect of statusline
" NOTE1 : User1 should be same as ErrorMsg. But when a window is switched to
" not-current state, the highlight link does not work. Before I get the root
" cause, define User1 explicitly to workaround.
" NOTE2 : ctermfg/guifg cannot be same as the ones of StatusLine or the color
" will be wrong in not-current window. Use a very similar color to workaround.
hi User1 term=NONE cterm=NONE ctermfg=254 ctermbg=160 gui=NONE guifg=#e4e4e4 guibg=#d70000
hi User2 term=NONE cterm=NONE ctermfg=254 ctermbg=20 gui=NONE guifg=#e4e4e4 guibg=#0000d7
" hi! link User1 ErrorMsg
function! GetModifiedPrefix(isModified)
  if &modified == a:isModified
    return '['.bufnr("%").']'.fnamemodify(bufname("%"),':t')
  else
    return ''
  endif
endfunction
set statusline=%1*%{GetModifiedPrefix(1)}%*%{GetModifiedPrefix(0)}%=%l/%L:%c
if exists('##TerminalOpen')
  au TerminalOpen * setlocal statusline=%2*%{GetModifiedPrefix(1)}%*%{GetModifiedPrefix(0)}%=%l/%L:%c
endif

" Multiple keyword marks
hi MyKeyword0 cterm=bold,reverse gui=bold,reverse
hi MyKeyword1 cterm=bold ctermbg=89 gui=bold guibg=#87005f
hi MyKeyword2 cterm=bold ctermbg=54 gui=bold guibg=#5f0087
" Empty pattern means current line
function! SetMatchHighlight(index, pattern)
  if a:index !=0 && a:index != 1 && a:index != 2
    return
  endif
  call ResetMatchHighlight(a:index)

  let l:targetPattern = a:pattern
  if(a:pattern == '')
    let l:targetPattern='^'.escape(getline('.'),'~.\^$*[]').'$'
  endif
  let w:myMatchHighlights[a:index] = matchadd('MyKeyword'.a:index, l:targetPattern)
  let w:myMatchPatterns[a:index] = l:targetPattern
  let w:myMatchPatternsConcat .= (w:myMatchPatternsConcat != '' ? '\|' : '').l:targetPattern
endfunction

function! ClearMatchHighlights()
  call ResetMatchHighlight(0)
  call ResetMatchHighlight(1)
  call ResetMatchHighlight(2)
endfunction

function! ResetMatchHighlight(index)
  if !exists('w:myMatchHighlights')
    let w:myMatchHighlights = [-1, -1, -1]
    let w:myMatchPatterns = ['', '', '']
    let w:myMatchPatternsConcat = ''
  elseif w:myMatchHighlights[a:index] >= 0
    call matchdelete(w:myMatchHighlights[a:index])
    let w:myMatchHighlights[a:index] = -1
    let w:myMatchPatterns[a:index] = ''
    let w:myMatchPatternsConcat = ''
    for pattern in w:myMatchPatterns
      if(pattern != '')
        let w:myMatchPatternsConcat .= (w:myMatchPatternsConcat != '' ? '\|' : '').pattern
      endif
    endfor
  endif
endfunction

function! SearchMatchPatterns(...)
  if !exists('w:myMatchHighlights')
    return
  endif
  if w:myMatchPatternsConcat!=''
    call search(w:myMatchPatternsConcat,(a:0)>0?(a:1):'')
  endif
endfunction

nnoremap <leader>1 :call SetMatchHighlight(0, '\c\<<C-R><C-W>\>')<CR>
nnoremap <leader>2 :call SetMatchHighlight(1, '\c\<<C-R><C-W>\>')<CR>
nnoremap <leader>3 :call SetMatchHighlight(2, '')<CR>
nnoremap <leader>4 :call SetMatchHighlight(0, '\c')<Left><Left>
nnoremap s :call SearchMatchPatterns()<CR>
nnoremap S :call SearchMatchPatterns('b')<CR>
nnoremap <leader>` :noh <BAR> call ClearMatchHighlights()<CR>

" Session recovering
function! GetCurrentSession()
  if v:this_session==''
    if has("win32")
      return '~/vimfiles/saved_session.vim'
    else
      return '~/.vim/saved_session.vim'
    endif
  else
    return v:this_session
  endif
endfunction
set ssop=blank,help,tabpages
nnoremap <F8> :wa <BAR> exe "mks! ".GetCurrentSession() <CR>
nnoremap <S-F8> :wa <BAR> tabnew <BAR> tabonly <BAR> exe "so ".GetCurrentSession() <CR>

" Syntax highlight recovering and redraw
" This may be useful since highlight sometimes crashed when using folding.
" Redraw to clean redundant pixels color caused by rendering error.
nnoremap <F12> :syn sync fromstart <CR><C-L>

" Python script for clang-format
function! ClangFormat(isAll)
  let l:lines = 'all'
  if a:isAll == 0
    unlet l:lines
  endif
  exec 'py3f '.s:myVimDir.'/clang-format.py'
endfunction
if has("win32")
  let g:clang_format_path = 'clang-format.bat'
else
  let g:clang_format_path = 'clang-format'
endif
nnoremap <leader>fw :call ClangFormat(1)<cr>:w<cr>
nnoremap <leader>ff :call ClangFormat(1)<cr>
vnoremap <leader>f :call ClangFormat(0)<cr>

" Open complement file according to extension
" c/cpp/cc/m/mm <--> h/hpp
function! OpenComplementFile()
  let l:filename = expand('%:r')
  let l:extension = expand('%:e')
  if l:extension == 'h' || l:extension == 'hpp'
    if filereadable( l:filename.'.c' )
      exe 'e '.l:filename.'.c'
    elseif filereadable( l:filename.'.cc' )
      exe 'e '.l:filename.'.cc'
    elseif filereadable( l:filename.'.m' )
      exe 'e '.l:filename.'.m'
    elseif filereadable( l:filename.'.mm' )
      exe 'e '.l:filename.'.mm'
    else
      exe 'e '.l:filename.'.cpp'
    endif
  elseif l:extension == 'c' || l:extension == 'cpp' || l:extension == 'cc' || l:extension == 'm' || l:extension == 'mm'
    if filereadable( l:filename.'.hpp' )
      exe 'e '.l:filename.'.hpp'
    else
      exe 'e '.l:filename.'.h'
    endif
  else
    echo 'File type "'.l:extension.'" is not supported.'
  endif
endfunction
nnoremap <leader>g :call OpenComplementFile()<CR>

" Recognize filetype: gn
au BufRead,BufNewFile *.gn set filetype=gn

" Temporally set filetype to javascript for jsx, ts, tsx
au BufRead,BUfNewFile *.jsx,*.ts,*.tsx set filetype=javascript

" Vim-plug settings
" not used recently
"call plug#begin('~/vimfiles/plugged')
"Plug 'w0rp/ale'
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'majutsushi/tagbar'
"Plug 'airblade/vim-gitgutter'
"Plug 'mhinz/vim-signify'
"call plug#end()
