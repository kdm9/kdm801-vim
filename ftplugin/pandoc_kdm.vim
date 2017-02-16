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
endf


map <buffer> <localleader>fm <Esc>:call TogglePandocAuto()<CR>
map <buffer> <localleader>fc <Esc>:Pandoc #cite<CR>
map <buffer> <localleader>fcv <Esc>:Pandoc! #cite<CR>
map <buffer> <localleader>fp <Esc>:Pandoc pdf<CR>
map <buffer> <localleader>fpv <Esc>:Pandoc! pdf<CR>
map <buffer> <localleader>fh <Esc>:Pandoc #kdmhtml<CR>
map <buffer> <localleader>fhv <Esc>:Pandoc #kdmhtml<CR>
map <buffer> <localleader>fah <Esc>:call SetPandocAuto('#kdmhtml')<CR>
map <buffer> <localleader>fap <Esc>:call SetPandocAuto('#cite')<CR>
