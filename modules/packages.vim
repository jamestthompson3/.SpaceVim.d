" If there is a particular plugin you don't like, you can define this
" variable to disable them entirely:
let g:spacevim_disabled_plugins=[
\ ['ternjs/tern_for_vim'],
\ ['maksimr/vim-jsbeautify'],
\ ['Galooshi/vim-import-js']
\ ]

" If you want to add some custom plugins, use these options:
let g:spacevim_custom_plugins = [
  \ ['Quramy/vim-js-pretty-template'],
  \ ['sbdchd/neoformat'],
  \ ['Quramy/Tsuquyomi'],
  \ ['prettier/vim-prettier'],
  \ ['mattn/emmet-vim'],
  \ ['wakatime/vim-wakatime'],
  \ ['pangloss/vim-javascript'],
  \ ['kristijanhusak/vim-hybrid-material'],
  \ ['styled-components/vim-styled-components'],
  \ ['maxmellon/vim-jsx-pretty'],
  \ ['steelsojka/deoplete-flow'],
  \['neoclide/vim-jsx-improve', { 'on_ft': 'javascript' }],
  \ ['othree/es.next.syntax.vim', { 'on_ft': 'javascript' }],
  \ ['othree/javascript-libraries-syntax.vim', {
  \ 'on_ft': ['javascript', 'coffee', 'ls', 'typescript'] }],
  \ ['othree/yajs.vim', { 'on_ft': 'javascript' }],
  \ ['heavenshell/vim-jsdoc', { 'on_cmd': 'JsDoc' }],
  \ ['w0rp/ale']
\ ]

