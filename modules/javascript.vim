"""""""""""""" JS stuff """"""""""""""""""""""
" Syntax Highlighting
let g:jsx_ext_required = 0
let g:vim_jsx_pretty_colorful_config = 1
" TSS info
let g:tsuquyomi_disable_quickfix = 1
" TODO Figure out why this takes so much memory
" let g:tsuquyomi_javascript_support = 1
" let g:syntastic_typescript_checkers = ['tsuquyomi']
let g:tsuquyomi_shortest_import_path = 1
" let g:tsuquyomi_use_vimproc = 1
" let g:flow#autoclose =  1
" let g:flow#errjmp = 1
" let g:flow#timeout = 12
  " Allow prompt for interactive input.
let g:jsdoc_allow_input_prompt = 1
" Prompt for a function description
let g:jsdoc_input_description = 1
" Set value to 1 to turn on detecting underscore starting functions as private convention
let g:jsdoc_underscore_private = 1
" Enable to use ECMAScript6's Shorthand function, Arrow function.
let g:jsdoc_enable_es6 = 1
