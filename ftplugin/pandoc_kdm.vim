fu! TogglePandocAuto()
    if g:pandoc#command#autoexec_on_writes == 1
        let g:pandoc#command#autoexec_on_writes = 0
        echo "Auto-compilaiton disabled"
    else
        let g:pandoc#command#autoexec_on_writes = 1
        echo "Auto-compilaiton enabled"
    endif
endf

nnoremap <buffer> <localleader>fm <Esc>:call TogglePandocAuto()<CR>
nnoremap <buffer> <localleader>fc <Esc>:Pandoc #cite<CR>
nnoremap <buffer> <localleader>fcv <Esc>:Pandoc! #cite<CR>
nnoremap <buffer> <localleader>fp <Esc>:Pandoc pdf<CR>
nnoremap <buffer> <localleader>fpv <Esc>:Pandoc! pdf<CR>
nnoremap <buffer> <localleader>fh <Esc>:Pandoc #kdmhtml<CR>
nnoremap <buffer> <localleader>fhv <Esc>:Pandoc #kdmhtml<CR>
nnoremap <buffer> <localleader>fah <Esc>:let b:pandoc#command#autoexec_command = 'Pandoc #kdmhtml'<CR>
nnoremap <buffer> <localleader>fap <Esc>:let b:pandoc#command#autoexec_command = 'Pandoc #cite'<CR>
