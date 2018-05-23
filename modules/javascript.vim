"""""""""""""" JS stuff """"""""""""""""""""""
let g:jsx_ext_required = 0
" max line lengh that prettier will wrap on
let g:prettier#config#print_width = 100 
" print semicolons
let g:prettier#config#semi = 'false'
" single quotes over double quotes
let g:prettier#config#single_quote = 'true'
" put > on the last line instead of new line
let g:prettier#config#jsx_bracket_same_line = 'true'
" none|es5|all
let g:prettier#config#trailing_comma = 'none'
" flow|babylon|typescript|postcss
let g:prettier#config#parser = 'flow'
" prettier on save
let g:prettier#autoformat = 0
autocmd BufWritePre *.js Prettier

" TSS info
let g:tsuquyomi_completion_detail = 1
let g:tsuquyomi_disable_quickfix = 1
let g:tsuquyomi_javascript_support = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']
let g:tsuquyomi_shortest_import_path = 1
autocmd FileType typescript, javascript TsuquyomiStartServer
