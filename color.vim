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
hi Normal cterm=NONE ctermfg=252 ctermbg=16 gui=NONE guifg=#a8a8a8 guibg=#000000
hi Cursor cterm=NONE ctermfg=16 ctermbg=252 gui=NONE guifg=bg guibg=fg
hi! link lCursor Cursor
" Frame
hi StatusLine cterm=NONE ctermfg=255 ctermbg=239 gui=NONE guifg=#eeeeee guibg=#4e4e4e
hi! link TabLineSel StatusLine
hi StatusLineNC cterm=NONE ctermfg=239 ctermbg=232 gui=NONE guifg=#4e4e4e guibg=#080808
hi! link LineNr StatusLineNC
hi! link TabLine StatusLineNC
hi! link TabLineFill StatusLineNC
hi CursorLineNr cterm=NONE ctermfg=221 ctermbg=232 gui=NONE guifg=#ffd75f guibg=#080808
hi! link WildMenu CursorLineNr
hi Title cterm=NONE ctermfg=185 gui=NONE guifg=#ffd75f guibg=NONE
hi VertSplit cterm=NONE ctermfg=232 ctermbg=232 gui=NONE guifg=#080808 guibg=#080808
" Pmenu
hi! link Pmenu StatusLineNC
hi! link PmenuSel CursorLineNr
hi! link PmenuSbar StatusLineNC
hi! link PmenuThumb StatusLine
" Diff
hi DiffAdd cterm=NONE ctermfg=NONE ctermbg=22 gui=NONE guifg=NONE guibg=#005f00
hi DiffDelete cterm=NONE ctermfg=22 ctermbg=NONE gui=NONE guifg=#005f00 guibg=NONE
hi DiffChange cterm=NONE ctermfg=NONE ctermbg=52 gui=NONE guifg=NONE guibg=#5f0000
hi DiffText cterm=NONE ctermfg=NONE ctermbg=124 gui=NONE guifg=NONE guibg=#870000
" Search
hi Search cterm=NONE ctermfg=NONE ctermbg=88 gui=NONE guifg=NONE guibg=#870000
hi IncSearch cterm=NONE ctermfg=NONE ctermbg=160 gui=NONE guifg=NONE guibg=#d70000
" Error
hi ErrorMsg cterm=NONE ctermfg=225 ctermbg=160 gui=NONE guifg=#eeeeee guibg=#d70000
hi! link WarningMsg ErrorMsg
hi NonText cterm=NONE ctermfg=88 ctermbg=NONE gui=NONE guifg=#d70000 guibg=NONE
" Conceal
hi Conceal cterm=NONE ctermfg=239 cterm=NONE gui=NONE guifg=#4e4e4e guibg=NONE
hi! link EndOfBuffer Conceal
hi! link SpecialKey Conceal
" Mode
hi ModeMsg cterm=NONE ctermfg=51 ctermbg=NONE gui=NONE guifg=#00ffff guibg=NONE
hi! link MoreMsg ModeMsg
hi! link Question ModeMsg
" Misc
hi Visual ctermbg=237 guibg=#303030
hi MatchParen cterm=underline ctermfg=198 ctermbg=NONE gui=underline guifg=#ff0087 guibg=NONE
hi Folded cterm=NONE ctermfg=32 ctermbg=NONE gui=NONE guifg=#0087d7 guibg=NONE
hi! link Directory Type
" QuickFixLine not set
" ToolbarLine, ToolbarButton not set
" SpellBad, Spellcap, SpellRare, SpellLocal not set
" SignColumn, FoldColumn not set
" VisualNOS not set
" StatusLineTerm, StatusLineTermNC not set
" FoldColumn not set
" CursorColumn, CursorLine, ColorColumn not set

" Syntax section
" Comment
hi Comment cterm=italic ctermfg=60 ctermbg=NONE gui=italic guifg=#4e4e4e guibg=NONE
hi Todo cterm=italic,reverse ctermfg=60 ctermbg=NONE gui=italic,reverse guifg=#4e4e4e guibg=NONE
" Constant & number
hi Constant cterm=NONE ctermfg=209 ctermbg=NONE gui=NONE guifg=#d7875f guibg=NONE
hi! link Number Constant
hi! link Boolean Constant
hi! link Float Constant
" String & character
hi String cterm=NONE ctermfg=43 ctermbg=NONE gui=NONE guifg=#87af87 guibg=NONE
hi! link Character String
" Special
hi! link Special String
hi! link Tag Special
hi! link SpecialChar Special
hi! link Delimiter Special
hi! link SpecialComment Special
hi! link Debug Special
" Preproc
hi PreProc cterm=NONE ctermfg=75 ctermbg=NONE gui=NONE guifg=#d78787 guibg=NONE
hi! link Include PreProc
hi! link Define PreProc
hi! link Macro PreProc
hi! link PreCondit PreProc
" Type
hi Type cterm=NONE ctermfg=120 ctermbg=NONE gui=NONE guifg=#87afd7 guibg=NONE
hi! link StorageClass Type
hi! link Structure Type
hi! link Typedef Type
" Identifier
hi Identifier cterm=NONE ctermfg=185 ctermbg=NONE gui=NONE guifg=#af87d7 guibg=NONE
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
hi Underlined cterm=underline ctermfg=NONE ctermbg=NONE gui=underline guifg=NONE guibg=NONE
hi Ignore cterm=NONE ctermfg=239 ctermbg=NONE gui=NONE guifg=#4e4e4e guibg=NONE
hi Error cterm=NONE ctermfg=225 ctermbg=160 gui=NONE guifg=#eeeeee guibg=#d70000

" diff file
" The default highlighting for diff file is weird.
" Force to set their values to workaround.
hi diffRemoved cterm=NONE ctermfg=161 ctermbg=NONE gui=NONE guifg=#d7005f guibg=NONE
hi diffAdded cterm=NONE ctermfg=41 ctermbg=NONE gui=NONE guifg=#00d75f guibg=NONE
hi! link diffChanged Normal
hi! link diffSubname Normal
hi diffLine cterm=NONE ctermfg=75 ctermbg=NONE gui=NONE guifg=#5fafff guibg=NONE
hi diffFile cterm=NONE ctermfg=229 ctermbg=NONE gui=NONE guifg=#ffffaf guibg=NONE

