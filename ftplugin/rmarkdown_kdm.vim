nmap <localleader>vf <Esc>?^```<CR>jV/^```<CR>k

set columns=80
set textwith=0
autocmd VimResized * if (&columns > 80) | set columns=80 | endif
set wrap
set linebreak
let &showbreak = '  '
nmap j gj
nmap k gk
