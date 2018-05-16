" Dark powered mode of SpaceVim, generated by SpaceVim automatically.
call SpaceVim#layers#load('incsearch')
" call SpaceVim#layers#load('lang#go')
" call SpaceVim#layers#load('lang#haskell')
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
  \ ['prettier/vim-prettier'],
  \ ['mattn/emmet-vim'],
  \ ['mxw/vim-jsx'],
  \ ['vim-syntastic/syntastic'],
  \ ['prabirshrestha/async.vim'],
  \ ['prabirshrestha/vim-lsp'],
  \ ['nightsense/seagrey']
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
let g:spacevim_guifont = 'Input\ Mono \Narrow 14'
let g:spacevim_statusline_separator = 'nil'
let g:spacevim_colorscheme = 'seagrey-dark'
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
" LSP
if executable('typescript-language-server')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'typescript-language-server',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
        \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'jsconfig.json'))},
        \ 'whitelist': ['typescript'],
        \ })
endif
let g:lsp_signs_enabled = 1         " enable signs
let g:lsp_diagnostics_echo_cursor = 1 " enable echo under cursor when in normal mode

" JS stuff
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
" Typescript info
let g:tsuquyomi_completion_detail = 1
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']
let g:tsuquyomi_shortest_import_path = 1

" Linting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
" formater
let g:neoformat_try_formatprg = 1
