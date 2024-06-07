set number
set ruler

set autoindent
set smartindent
set noexpandtab
set copyindent
set smarttab
set shiftwidth=4
set softtabstop=0
set tabstop=4

set termguicolors
syntax on
colorscheme lika

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
