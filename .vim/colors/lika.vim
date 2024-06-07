" Name:         lika
" Description:  
" Author:       Lika Kavkasidze
" License:      All rights reserved

set background=dark

hi clear
let g:colors_name = 'lika'

"hi! link CursorIM Cursor
"hi! link lCursor Cursor

hi Normal guibg=NONE guifg=#fbeeec
hi Comment guibg=NONE guifg=#999bff
hi Constant guibg=NONE guifg=#df6cd2
hi Statement guibg=NONE guifg=#d65042 gui=bold cterm=bold
hi Special guibg=NONE guifg=#af42d6 gui=bold cterm=bold
hi Identifier guibg=NONE guifg=#e16f8e gui=NONE cterm=NONE
hi Type guibg=NONE guifg=#e16f8e

"hi Cursor guibg=#ff0000 guifg=#1c1917
hi LineNr guibg=NONE guifg=#d65042
hi MatchParen guibg=#e16f8e guifg=#1c1917
