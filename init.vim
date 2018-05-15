" Dark powered mode of SpaceVim, generated by SpaceVim automatically.
call SpaceVim#layers#load('incsearch')
" call SpaceVim#layers#load('lang#go')
call SpaceVim#layers#load('lang#haskell')
call SpaceVim#layers#load('colorscheme')
call SpaceVim#layers#load('lang#typescript')
" call SpaceVim#layers#load('lang#javascript')
" call SpaceVim#layers#load('lang#php')
call SpaceVim#layers#load('lang#python')
call SpaceVim#layers#load('lang#markdown')
" call SpaceVim#layers#load('lang#swig')
" call SpaceVim#layers#load('lang#tmux')
call SpaceVim#layers#load('lang#vim')
call SpaceVim#layers#load('lang#xml')
call SpaceVim#layers#load('shell', 
  \{
  \'default_position': 'bottom',
  \}
  \)   

call SpaceVim#layers#load('tools#screensaver')

" If there is a particular plugin you don't like, you can define this
" variable to disable them entirely:
" let g:spacevim_disabled_plugins=[
" \ ['junegunn/fzf.vim'],
" \ ]

" If you want to add some custom plugins, use these options:
let g:spacevim_custom_plugins = [
  \ ['airblade/vim-gitgutter'],
  \ ['Quramy/vim-js-pretty-template'],
  \ ['Quramy/Tsuquyomi'],
  \ ['sbdchd/neoformat'],
  \ ['mattn/emmet-vim'],
  \ ['mxw/vim-jsx']
\ ]

let g:spacevim_enable_vimfiler_welcome = 1
let g:spacevim_enable_debug = 1
let g:deoplete#auto_complete_delay = 150
let g:spacevim_enable_tabline_filetype_icon = 0
let g:spacevim_enable_statusline_display_mode = 1
let g:spacevim_enable_os_fileformat_icon = 0
let g:spacevim_buffer_index_type = 1
let g:neomake_vim_enabled_makers = []
let g:spacevim_lint_on_save = 0
let g:spacevim_guifont = 'Pragmata\ Pro\ 14'
let g:spacevim_statusline_separator = 'nil'
let g:spacevim_colorscheme = 'onedark'
let g:spacevim_colorscheme_bg = 'dark'
let g:spacevim_realtime_leader_guide = 1
" let g:spacevim_windows_leader = ','
let g:mta_use_matchparen_group = 1

let g:mta_filetypes = {
  \ 'html' : 1,
  \ 'xhtml' : 1,
  \ 'xml' : 1,
\ }

" ensure that HTML docuemnts wrap appropriately
set breakindent

if executable('vimlint')
    call add(g:neomake_vim_enabled_makers, 'vimlint') 
endif
if executable('vint')
    call add(g:neomake_vim_enabled_makers, 'vint') 
endif
if has('python3')
    let g:ctrlp_map = ''
    nnoremap <silent> <C-p> :Denite file_rec<CR>
endif
let g:clang2_placeholder_next = ''
let g:clang2_placeholder_prev = ''
inoremap jj <Esc>
" prettier on save
autocmd BufWritePre *.js Neoformat
autocmd FileType javascript setlocal formatprg=prettier\ --stdin\ --parser\ flow\ --single-quote\ --no-semi\ --trailing-comma\ none\ --print-width\ 100\
" Open fullscreen
" au GUIEnter * simalt ~x
" JS stuff
let g:tsuquyomi_completion_detail = 1
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']
let g:tsuquyomi_shortest_import_path = 1

