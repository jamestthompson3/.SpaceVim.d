call SpaceVim#layers#load('incsearch')
call SpaceVim#layers#load('colorscheme')
call SpaceVim#layers#load('checkers')
call SpaceVim#layers#load('leaderf')
call SpaceVim#layers#load('autocomplete')
call SpaceVim#layers#load('lang#typescript')
call SpaceVim#layers#load('lang#javascript')
call SpaceVim#layers#load('lang#python')
call SpaceVim#layers#load('lang#markdown')
call SpaceVim#layers#load('lang#git')
call SpaceVim#layers#load('lang#VersionControl')
call SpaceVim#layers#load('lang#vim')
call SpaceVim#layers#load('lang#xml')
call SpaceVim#layers#load('lang#html')
call SpaceVim#layers#load('lsp',
    \ {
    \ 'filetypes' : ['python',
                   \ 'javascript',
                   \ ],
    \ }
\ )
call SpaceVim#layers#load('shell',
  \{
  \'default_position': 'bottom',
  \}
  \)

call SpaceVim#layers#load('tools')

let g:spacevim_enable_debug = 1
let g:deoplete#auto_complete_delay = 150
let g:spacevim_enable_tabline_filetype_icon = 0
let g:spacevim_enable_statusline_display_mode = 1
let g:spacevim_enable_os_fileformat_icon = 1
let g:spacevim_buffer_index_type = 4 
let g:spacevim_lint_on_save = 0
let g:spacevim_windows_index_type = 4
