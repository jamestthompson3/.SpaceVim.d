"""""""""""""" Custom Bindings """""""""""""""""""
inoremap jj <Esc>
if has('python3')
    let g:ctrlp_map = ''
    nnoremap <silent> <C-p> :Denite file_rec<CR>
endif
" Mabye this might work again some day...
autocmd FileType javascript nnoremap <buffer>gd :TsuDefinition<CR>
autocmd FileType javascript nnoremap <buffer>Y :TsuReferences<CR>

