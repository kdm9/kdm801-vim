fu! TogglePandocAuto()
    if g:pandoc#command#autoexec_on_writes == 1
        let g:pandoc#command#autoexec_on_writes = 0
        echo "Auto-compilaiton disabled"
    else
        let g:pandoc#command#autoexec_on_writes = 1
        echo "Auto-compilaiton enabled"
    endif
endf

nnoremap <buffer> <localleader>m <Esc>:call TogglePandocAuto()<CR>
nnoremap <buffer> <localleader>lc <Esc>:Pandoc #cite<CR>
nnoremap <buffer> <localleader>lcv <Esc>:Pandoc! #cite<CR>
nnoremap <buffer> <localleader>lp <Esc>:Pandoc pdf<CR>
nnoremap <buffer> <localleader>lpv <Esc>:Pandoc! pdf<CR>
nnoremap <buffer> <localleader>lh <Esc>:Pandoc #kdmhtml<CR>
nnoremap <buffer> <localleader>lhv <Esc>:Pandoc #kdmhtml<CR>
