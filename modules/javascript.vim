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

" Syntax Highlighting
let g:vim_jsx_pretty_colorful_config = 1
" TSS info
let g:tsuquyomi_disable_quickfix = 1
" Figure out why this takes so much memory
" let g:tsuquyomi_javascript_support = 1
" let g:syntastic_typescript_checkers = ['tsuquyomi']
let g:tsuquyomi_shortest_import_path = 1
let g:tsuquyomi_use_vimproc = 1
" let g:flow#autoclose =  1
" let g:flow#errjmp = 1
" let g:flow#timeout = 12
function! StrTrim(txt)
  return substitute(a:txt, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
endfunction

let g:flow_path = StrTrim(system('PATH=$(npm bin):$PATH && which flow'))

if g:flow_path != 'flow not found'
  let g:deoplete#sources#flow#flow_bin = g:flow_path
endif
