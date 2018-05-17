" Dark powered mode of SpaceVim, generated by SpaceVim automatically.
let g:ale_emit_conflict_warnings = 0
call SpaceVim#layers#load('incsearch')
" call SpaceVim#layers#load('lang#go')
" call SpaceVim#layers#load('lang#haskell')
call SpaceVim#layers#load('colorscheme')
call SpaceVim#layers#load('git')
call SpaceVim#layers#load('lang#typescript')
call SpaceVim#layers#load('lang#javascript')
call SpaceVim#layers#load('lang#python')
call SpaceVim#layers#load('lang#markdown')
call SpaceVim#layers#load('lang#vim')
call SpaceVim#layers#load('lang#xml')
call SpaceVim#layers#load('shell', 
  \{
  \'default_position': 'bottom',
  \}
  \)   

call SpaceVim#layers#load('tools')

" If there is a particular plugin you don't like, you can define this
" variable to disable them entirely:
let g:spacevim_disabled_plugins=[
\ ['tern_for_vim'],
\ ['maksimr/vim-jsbeautify'],
\ ]

" If you want to add some custom plugins, use these options:
let g:spacevim_custom_plugins = [
  \ ['airblade/vim-gitgutter'],
  \ ['Quramy/vim-js-pretty-template'],
  \ ['Quramy/Tsuquyomi'],
  \ ['sbdchd/neoformat'],
  \ ['prettier/vim-prettier'],
  \ ['mattn/emmet-vim'],
  \ ['mxw/vim-jsx'],
  \ ['w0rp/ale'],
  \ ['mhartington/oceanic-next']
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

""""""""""""" UI stuff """""""""""""""""
" Focus Aids
augroup rainbow
  autocmd!
  autocmd FileType lisp,clojure,scheme RainbowParentheses
augroup END
function! s:goyo_enter()
  silent !tmux set status off
  silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
  " ...
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
  " ...
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
" General UI
let g:spacevim_colorscheme_bg = 'dark'
let g:spacevim_guifont = 'InputMonoNarrow'
let g:spacevim_colorscheme = 'Oceanicnext'
let g:spacevim_statusline_separator = 'arrow'
let g:spacevim_custom_color_palette =  [
                \ ['#2c323c', '#98c379', 114, 16],
                \ ['#abb2bf', '#3b4048', 16, 145],
                \ ['#abb2bf', '#2c323c', 16, 145],
                \ ['#2c323c', 16],
                \ ['#2c323c', '#afd7d7', 114, 152],
                \ ['#2c323c', '#ff8787', 114, 210],
                \ ['#2c323c', '#d75f5f', 114, 167],
                \ ['#2c323c', '#689d6a', 114, 72],
                \ ['#2c323c', '#8f3f71', 114, 132],
                \ ]

"""""""""""""" Custom Bindings """""""""""""""""""
inoremap jj <Esc>

"""""""""""""" JS stuff """"""""""""""""""""""

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
let g:ale_linters = {
\   'javascript': ['eslint'],
\}
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
let g:ale_statusline_format = ['{%d} error(s)', '{%d} warning(s)', '']
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
set statusline+=%#warningmsg#
set statusline+=%*
" formater
let g:neoformat_try_formatprg = 1

