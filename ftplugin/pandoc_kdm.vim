fu! TogglePandocAuto()
    if g:pandoc#command#autoexec_on_writes == 1
        let g:pandoc#command#autoexec_on_writes = 0
        echo "Auto-compilaiton disabled"
    else
        let g:pandoc#command#autoexec_on_writes = 1
        echo "Auto-compilaiton enabled"
    endif
endf

fu! SetPandocAuto(type)
    let g:pandoc#command#autoexec_command = 'Pandoc ' . a:type
    echo "Auto-compilaiton format is now '" . a:type . "'"
endf


map <buffer> <localleader>fm <Esc>:call TogglePandocAuto()<CR>
map <buffer> <localleader>fc <Esc>:Pandoc #cite<CR>
map <buffer> <localleader>fcv <Esc>:Pandoc! #cite<CR>
map <buffer> <localleader>fp <Esc>:Pandoc pdf<CR>
map <buffer> <localleader>fpv <Esc>:Pandoc! pdf<CR>
map <buffer> <localleader>fh <Esc>:Pandoc #kdmhtml<CR>
map <buffer> <localleader>fhv <Esc>:Pandoc #kdmhtml<CR>
map <buffer> <localleader>fs <Esc>:Pandoc #kdmslides<CR>
map <buffer> <localleader>fsv <Esc>:Pandoc #kdmslides<CR>
map <buffer> <localleader>fah <Esc>:call SetPandocAuto('#kdmhtml')<CR>
map <buffer> <localleader>fas <Esc>:call SetPandocAuto('#kdmslides')<CR>
map <buffer> <localleader>fac <Esc>:call SetPandocAuto('#cite')<CR>
map <buffer> <localleader>fan <Esc>:call SetPandocAuto('#htmlnb')<CR>

nmap <localleader>vf <Esc>?^```<CR>jV/^```<CR>k

set columns=80
set textwidth=0
autocmd VimResized * if (&columns > 80) | set columns=80 | endif
set wrap
set linebreak
let &showbreak = '  '
nmap j gj
nmap k gk
