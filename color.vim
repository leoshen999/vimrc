" Vim color file
" Only 256 color and GUI modes are supported.

set background=dark
hi clear
if exists("syntax on")
  syntax reset
endif
let g:colors_name = "leoshen256"

" General section
" Basic
hi Normal term=NONE cterm=NONE ctermfg=250 ctermbg=16 gui=NONE guifg=#bcbcbc guibg=#000000
hi Cursor term=NONE cterm=NONE ctermfg=bg ctermbg=fg gui=NONE guifg=bg guibg=fg
hi! link lCursor Cursor
" Frame
hi StatusLine term=NONE cterm=NONE ctermfg=255 ctermbg=239 gui=NONE guifg=#eeeeee guibg=#4e4e4e
hi! link TabLineSel StatusLine
hi! link FoldColumn StatusLine
hi StatusLineNC term=NONE cterm=NONE ctermfg=239 ctermbg=232 gui=NONE guifg=#4e4e4e guibg=#080808
hi! link LineNr StatusLineNC
hi! link TabLine StatusLineNC
hi! link TabLineFill StatusLineNC
hi CursorLineNr term=NONE cterm=NONE ctermfg=221 ctermbg=232 gui=NONE guifg=#ffd75f guibg=#080808
hi! link WildMenu CursorLineNr
hi Title term=NONE cterm=NONE ctermfg=221 gui=NONE guifg=#ffd75f guibg=NONE
hi VertSplit term=NONE cterm=NONE ctermfg=232 ctermbg=232 gui=NONE guifg=#080808 guibg=#080808
" Pmenu
hi! link Pmenu StatusLineNC
hi! link PmenuSel CursorLineNr
hi! link PmenuSbar StatusLineNC
hi! link PmenuThumb StatusLine
" Diff
hi DiffAdd term=NONE cterm=NONE ctermfg=NONE ctermbg=22 gui=NONE guifg=NONE guibg=#005f00
hi DiffDelete term=NONE cterm=NONE ctermfg=22 ctermbg=NONE gui=NONE guifg=#005f00 guibg=NONE
hi DiffChange term=NONE cterm=NONE ctermfg=NONE ctermbg=52 gui=NONE guifg=NONE guibg=#5f0000
hi DiffText term=NONE cterm=NONE ctermfg=NONE ctermbg=88 gui=NONE guifg=NONE guibg=#870000
" Search
hi Search term=NONE cterm=NONE ctermfg=NONE ctermbg=88 gui=NONE guifg=NONE guibg=#870000
hi IncSearch term=NONE cterm=NONE ctermfg=NONE ctermbg=160 gui=NONE guifg=NONE guibg=#d70000
" Error
hi ErrorMsg term=NONE cterm=NONE ctermfg=255 ctermbg=160 gui=NONE guifg=#eeeeee guibg=#d70000
hi! link WarningMsg ErrorMsg
" Conceal
hi Conceal term=NONE cterm=NONE ctermfg=239 cterm=NONE gui=NONE guifg=#4e4e4e guibg=NONE
hi! link EndOfBuffer Conceal
hi! link NonText Conceal
hi! link SpecialKey Conceal
" Mode
hi ModeMsg term=NONE cterm=NONE ctermfg=51 ctermbg=NONE gui=NONE guifg=#00ffff guibg=NONE
hi! link MoreMsg ModeMsg
hi! link Question ModeMsg
" Terminal
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
" Selection
hi Visual term=NONE cterm=NONE ctermfg=NONE ctermbg=236 gui=NONE guifg=NONE guibg=#303030
hi! link VisualNOS Visual
" Spell
hi SpellBad NONE
hi SpellCap NONE
hi SpellLocal NONE
hi SpellRare NONE
" Misc
hi MatchParen term=NONE cterm=underline ctermfg=198 ctermbg=NONE gui=underline guifg=#ff0087 guibg=NONE
hi Folded term=NONE cterm=NONE ctermfg=32 ctermbg=NONE gui=NONE guifg=#0087d7 guibg=NONE
hi! link Directory Type
" SignColumn not set
" QuickFixLine, ToolbarLine, ToolbarButton not set (GUI only?)
" CursorColumn, CursorLine, ColorColumn not set (should be set in vimrc)

" Syntax section
" Comment
hi Comment term=NONE cterm=italic ctermfg=240 ctermbg=NONE gui=italic guifg=#585858 guibg=NONE
hi Todo term=NONE cterm=italic,reverse ctermfg=240 ctermbg=NONE gui=italic,reverse guifg=#585858 guibg=NONE
" Constant & number
hi Constant term=NONE cterm=NONE ctermfg=173 ctermbg=NONE gui=NONE guifg=#d7875f guibg=NONE
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant
" String & character
hi String term=NONE cterm=NONE ctermfg=108 ctermbg=NONE gui=NONE guifg=#87af87 guibg=NONE
hi! link Character String
" Special
hi! link Special String
hi! link Tag Special
hi! link SpecialChar Special
hi! link Delimiter Special
hi! link SpecialComment Special
hi! link Debug Special
" Preproc
hi PreProc term=NONE cterm=NONE ctermfg=174 ctermbg=NONE gui=NONE guifg=#d78787 guibg=NONE
hi! link Include PreProc
hi! link Define PreProc
hi! link Macro PreProc
hi! link PreCondit PreProc
" Type
hi Type term=NONE cterm=NONE ctermfg=110 ctermbg=NONE gui=NONE guifg=#87afd7 guibg=NONE
hi! link StorageClass Type
hi! link Structure Type
hi! link Typedef Type
" Identifier
hi Identifier term=NONE cterm=NONE ctermfg=140 ctermbg=NONE gui=NONE guifg=#af87d7 guibg=NONE
hi! link Function Identifier
" Statement
hi! link Statement Identifier
hi! link Conditional Statement
hi! link Repeat Statement
hi! link Label Statement
hi! link Operator Statement
hi! link Keyword Statement
hi! link Exception Statement
" Misc
hi Underlined term=NONE cterm=underline ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE
hi! link Ignore Conceal
hi! link Error ErrorMsg

" diff file
" The default highlighting for diff file is weird.
" Force to set their values to workaround.
hi diffAdded term=NONE cterm=NONE ctermfg=108 ctermbg=NONE gui=NONE guifg=#87af87 guibg=NONE
hi diffRemoved term=NONE cterm=NONE ctermfg=174 ctermbg=NONE gui=NONE guifg=#d78787 guibg=NONE
hi! link diffChanged Normal
hi! link diffSubname Normal
hi diffLine term=NONE cterm=NONE ctermfg=110 ctermbg=NONE gui=NONE guifg=#87afd7 guibg=NONE
hi diffFile term=NONE cterm=NONE ctermfg=173 ctermbg=NONE gui=NONE guifg=#d7875f guibg=NONE

