" Prevent ALE from complaining
let g:ale_emit_conflict_warnings = 0
let s:SYSTEM = SpaceVim#api#import('system')

" Create function to manage things in a semi-sane way
if s:SYSTEM.isWindows
 let g:modules_folder = 'modules\\'
else
  let g:modules_folder = 'modules/'
endif

function! LoadCustomModule( name )
  let script = g:modules_folder .  a:name . ".vim"
  " echom "Now loading " . a:name
  exec ":runtime " . script
endfunction

" Load custom modules
call LoadCustomModule( 'packages' )
call LoadCustomModule( 'ui' )
call LoadCustomModule( 'spacevim' )
call LoadCustomModule( 'bindings' )
call LoadCustomModule( 'javascript' )

let g:mta_use_matchparen_group = 1
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'javascript.jsx' : 1,
    \ 'jinja' : 1,
    \ 'liquid' : 1,
    \ 'markdown' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \}
let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.js,*.html.erb,*.md'
" ensure that HTML wraps appropriately
set breakindent

" Linting
let g:ale_linters = {
\   'javascript': ['eslint', 'flow'],
\}

let g:ale_sign_error = '💀'
let g:ale_sign_warning = '😒'

if executable('vimlint')
    call add(g:neomake_vim_enabled_makers, 'vimlint')
endif
if executable('vint')
    call add(g:neomake_vim_enabled_makers, 'vint')
endif

" function! LinterStatus() abort
    " let l:counts = ale#statusline#Count(bufnr(''))
"
    " let l:all_errors = l:counts.error + l:counts.style_error
    " let l:all_non_errors = l:counts.total - l:all_errors
"
    " return l:counts.total == 0 ? 'OK' : printf(
    " \   '%dW %dE',
    " \   all_non_errors,
    " \   all_errors
    " \)
" endfunction

" set statusline=%{LinterStatus()}
let g:clang2_placeholder_next = ''
let g:clang2_placeholder_prev = ''
let g:ale_statusline_format = ['{%d} error(s)', '{%d} warning(s)', '']
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:airline#extensions#ale#enabled = 1
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" formater
let g:neoformat_try_formatprg = 1

