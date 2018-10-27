" General settings
syntax on
filetype plugin indent on
let $LANG='en_US'

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

let mapleader = " "

" Just forget what this is for
if !has("gui_running")
  set term=xterm
  let &t_AB="\e[48;5;%dm"
  let &t_AF="\e[38;5;%dm"
  inoremap <Char-0x07F> <BS>
  nnoremap <Char-0x07F> <BS>
endif

" Shortcuts
nnoremap <C-PageDown> gt
nnoremap <C-PageUp> gT
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
nnoremap <leader>n :echo @%<cr>
nnoremap <leader>dt :difft<cr>
nnoremap <leader>do :diffo<cr>
" Not really used now
"nnoremap <leader>cd :cd %:p:h<cr>:pwd<cr>
"nnoremap <C-J> Lzz
"nnoremap <C-K> Hzz

" Change viminfo location on win32
if has("win32")
  set viminfo+=n~/vimfiles/viminfo
else
  set viminfo+=n~/.vim/viminfo
endif

" Change font on Win32 gVim
if has("gui_running") && has("gui_win32")
  set guifont=Consolas:h8:cANSI
endif

" Color settings
set background=dark
highlight clear
" basic colors
hi Normal cterm=NONE ctermfg=252 ctermbg=16 gui=NONE guifg=#d0d0d0 guibg=#000000
hi Cursor cterm=NONE ctermfg=16 ctermbg=252 gui=NONE guifg=#000000 guibg=#d0d0d0
hi lCursor cterm=NONE ctermfg=bg ctermbg=fg gui=NONE guifg=bg guibg=fg
" frame colors, etc
hi VertSplit cterm=NONE ctermfg=232 ctermbg=232 gui=NONE guifg=#080808 guibg=#080808
hi StatusLine cterm=NONE ctermfg=255 ctermbg=239 gui=NONE guifg=#eeeeee guibg=#4e4e4e
hi StatusLineNc cterm=NONE ctermfg=239 ctermbg=232 gui=NONE guifg=#4e4e4e guibg=#080808
hi LineNr cterm=NONE ctermfg=239 ctermbg=232 gui=NONE guifg=#4e4e4e guibg=#080808
hi CursorLineNr cterm=NONE ctermfg=221 ctermbg=232 gui=NONE guifg=#ffd75f guibg=#080808
hi WildMenu cterm=NONE ctermfg=221 ctermbg=232 gui=NONE guifg=#ffd75f guibg=#080808
hi ColorColumn cterm=NONE ctermfg=NONE ctermbg=232 gui=NONE guifg=NONE guibg=#080808
" hide
hi Conceal cterm=NONE ctermfg=239 cterm=NONE gui=NONE guifg=#4e4e4e guibg=NONE
hi EndOfBuffer cterm=NONE ctermfg=239 ctermbg=NONE gui=NONE guifg=#4e4e4e guibg=NONE
hi Ignore cterm=NONE ctermfg=239 ctermbg=NONE gui=NONE guifg=#4e4e4e guibg=NONE
" selection
hi Visual ctermbg=237 guibg=#3a3a3a
" red bg
hi Search cterm=NONE ctermfg=NONE ctermbg=88 gui=NONE guifg=NONE guibg=#870000
hi IncSearch cterm=NONE ctermfg=NONE ctermbg=160 gui=NONE guifg=NONE guibg=#d70000
hi ErrorMsg cterm=bold ctermfg=225 ctermbg=160 gui=bold guifg=#ffdfff guibg=#d70000
hi Error cterm=bold ctermfg=225 ctermbg=160 gui=bold guifg=#ffdfff guibg=#d70000
hi WarningMsg cterm=bold ctermfg=225 ctermbg=160 gui=bold guifg=#ffdfff guibg=#d70000
" cyan bold
hi ModeMsg cterm=bold ctermfg=51 ctermbg=NONE gui=bold guifg=#00ffff guibg=NONE
hi MoreMsg cterm=bold ctermfg=51 ctermbg=NONE gui=bold guifg=#00ffff guibg=NONE
hi Question cterm=bold ctermfg=51 ctermbg=NONE gui=bold guifg=#00ffff guibg=NONE
" magenta
hi SpecialKey cterm=NONE ctermfg=239 ctermbg=NONE gui=NONE guifg=#4e4e4e guibg=NONE
hi NonText cterm=NONE ctermfg=88 ctermbg=NONE gui=NONE guifg=#870000 guibg=NONE
" comment
hi Comment cterm=italic ctermfg=60 ctermbg=NONE gui=italic guifg=#5f5f87 guibg=NONE
hi Todo cterm=italic,reverse ctermfg=60 ctermbg=NONE gui=italic,reverse guifg=#5f5f87 guibg=NONE
" str & char
hi String cterm=NONE ctermfg=43 ctermbg=NONE gui=NONE guifg=#00d7af guibg=NONE
hi Character cterm=NONE ctermfg=43 ctermbg=NONE gui=NONE guifg=#00d7af guibg=NONE
hi Special cterm=NONE ctermfg=43 ctermbg=NONE gui=NONE guifg=#00d7af guibg=NONE
hi! link SpecialChar Special
hi! link Delimiter Special
hi! link SpecialComment Special
hi! link Debug Special
" pre proc
hi PreProc cterm=NONE ctermfg=75 ctermbg=NONE gui=NONE guifg=#5fafff guibg=NONE
hi! link Include PreProc
hi! link Define PreProc
hi! link Macro PreProc
hi! link PreCondit PreProc
" types
hi Type cterm=NONE ctermfg=120 ctermbg=NONE gui=NONE guifg=#87ff87 guibg=NONE
hi! link StorageClass Type
hi! link Structure Type
hi! link Typedef Type
" const
hi Constant cterm=NONE ctermfg=209 ctermbg=NONE gui=NONE guifg=#ff875f guibg=NONE
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant
hi! link Function Constant
" preserved words
hi Statement cterm=NONE ctermfg=185 ctermbg=NONE gui=NONE guifg=#d7d75f guibg=NONE
hi! link Conditional Statement
hi! link Repeat Statement
hi! link Label Statement
hi! link Operator Statement
hi! link Keyword Statement
hi! link Exception Statement
hi! link Identifier Statement
" diff
hi DiffAdd cterm=NONE ctermfg=NONE ctermbg=22 gui=NONE guifg=NONE guibg=#005f00
hi DiffDelete cterm=NONE ctermfg=22 ctermbg=NONE gui=NONE guifg=#005f00 guibg=NONE
hi DIffChange cterm=NONE ctermfg=NONE ctermbg=52 gui=NONE guifg=NONE guibg=#5f0000
hi DiffText cterm=bold ctermfg=NONE ctermbg=124 gui=bold guifg=NONE guibg=#af0000
" misc
hi MatchParen cterm=underline ctermfg=198 ctermbg=NONE gui=underline guifg=#ff0087 guibg=NONE
hi Folded cterm=NONE ctermfg=32 ctermbg=NONE gui=NONE guifg=#0087d7 guibg=NONE
hi Underlined cterm=underline ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE
" tab line
hi TabLine cterm=NONE ctermfg=239 ctermbg=232 gui=NONE guifg=#4e4e4e guibg=#080808
hi TabLineFill cterm=NONE ctermfg=16 ctermbg=16 gui=NONE guifg=#000000 guibg=#000000
hi TabLineSel cterm=NONE ctermfg=255 ctermbg=239 gui=NONE guifg=#eeeeee guibg=#4e4e4e
hi Title cterm=NONE ctermfg=185 gui=NONE guifg=#d7d75f
" directory
hi Directory cterm=NONE ctermfg=43 gui=NONE guifg=#00d7af
" pmenu
hi Pmenu gui=NONE guifg=#d0d0d0 guibg=#080808
hi PmenuSel gui=bold guifg=#ffd75f guibg=#080808
hi PmenuSbar guibg=#080808
hi PmenuThumb guibg=#4e4e4e
" diff file
" The default highlighting for diff file is weird.
" Force to set their values to workaround.
hi diffRemoved cterm=NONE ctermfg=161 ctermbg=NONE gui=NONE guifg=#d7005f guibg=NONE
hi diffAdded cterm=NONE ctermfg=41 ctermbg=NONE gui=NONE guifg=#00d75f guibg=NONE
hi! link diffChanged Normal
"diffChanged cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi! link diffSubname Normal
"cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE
hi diffLine cterm=NONE ctermfg=75 ctermbg=NONE gui=NONE guifg=#5fafff guibg=NONE
hi diffFile cterm=NONE ctermfg=229 ctermbg=NONE gui=NONE guifg=#ffffaf guibg=NONE
" QuickFixLine not set
" ToolbarLine, ToolbarButton not set
" SpellBad, Spellcap, SpellRare, SpellLocal not set
" SignColumn, FoldColumn not set
" VisualNOS not set
" StatusLineTerm, StatusLineTermNC not set
" FoldColumn not set
" Tag not set

" Effect of normal/insert mode
function! EnterInsertMode(mode)
  set ttimeoutlen=1
  if a:mode == 'i'
    hi CursorColumn cterm=NONE ctermbg=17 guibg=#00005f
    hi CursorLine cterm=NONE ctermbg=17 guibg=#00005f
  else
    hi CursorColumn cterm=NONE ctermbg=52 guibg=#5f0000
    hi CursorLine cterm=NONE ctermbg=52 guibg=#5f0000
  endif
endfunction
function! EnterNormalMode()
  set ttimeoutlen=-1
  hi CursorLine cterm=NONE ctermbg=234 guibg=#1c1c1c
  hi CursorColumn cterm=NONE ctermbg=234 guibg=#1c1c1c
endfunction
au InsertEnter * call EnterInsertMode(v:insertmode)
au InsertChange * call EnterInsertMode(v:insertmode)
au InsertLeave * call EnterNormalMode()
ino <C-C> <ESC>
call EnterNormalMode()

" Effect of statusline
hi User1 cterm=NONE ctermfg=225 ctermbg=160 gui=NONE guifg=#ffdfff guibg=#d70000
function! GetModifiedPrefix(isModified)
  if &modified == a:isModified
    return '['.bufnr("%").']'.fnamemodify(bufname("%"),':t')
  else
    return ''
  endif
endfunction
set statusline=%1*%{GetModifiedPrefix(1)}%*%{GetModifiedPrefix(0)}%=%l/%L:%c

" Multiple keyword marks
hi KeywordTemp0 cterm=bold,reverse gui=bold,reverse
hi KeywordTemp1 cterm=bold ctermbg=89 gui=bold guibg=#87005f
hi KeywordTemp2 cterm=bold ctermbg=54 gui=bold guibg=#5f0087
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
  let w:myMatchHighlights[a:index] = matchadd('KeywordTemp'.a:index, l:targetPattern)
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

nmap <leader>1 :call SetMatchHighlight(0, '\c\<<C-R><C-W>\>')<CR>
nmap <leader>2 :call SetMatchHighlight(1, '\c\<<C-R><C-W>\>')<CR>
nmap <leader>3 :call SetMatchHighlight(2, '')<CR>
nmap <leader>4 :call SetMatchHighlight(0, '\c')<Left><Left>
nmap s :call SearchMatchPatterns()<CR>
nmap S :call SearchMatchPatterns('b')<CR>
nmap <leader>` :noh <BAR> call ClearMatchHighlights()<CR>

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
  if has("win32")
    pyf ~/vimfiles/clang-format.py
  else
    py3f ~/.vim/clang-format.py
  endif
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
" c/cpp/cc <--> h/hpp
function! OpenComplementFile()
  let l:filename = expand('%:r')
  let l:extension = expand('%:e')
  if l:extension == 'h' || l:extension == 'hpp'
    if filereadable( l:filename.'.c' )
      exe 'e '.l:filename.'.c'
    elseif filereadable( l:filename.'.cc' )
      exe 'e '.l:filename.'.cc'
    else
      exe 'e '.l:filename.'.cpp'
    endif
  elseif l:extension == 'c' || l:extension == 'cpp' || l:extension == 'cc'
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

" Vim-plug settings
" not used recently
"call plug#begin('~/vimfiles/plugged')
"Plug 'w0rp/ale'
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'majutsushi/tagbar'
"Plug 'airblade/vim-gitgutter'
"Plug 'mhinz/vim-signify'
"call plug#end()
