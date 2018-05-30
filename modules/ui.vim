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
endfunction

function! s:goyo_leave()
  silent !tmux set status on
  silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
" General UI
let g:spacevim_colorscheme_bg = 'dark'
let g:enable_italic_font = 1
let g:enable_bold_font = 1
let g:spacevim_guifont = 'Dejavu_Sans_Mono_for_Powerline:h10:cANSI:qDRAFT'
let g:spacevim_colorscheme = 'hybrid_reverse'
" let g:spacevim_statusline_separator = 'arrow'
let g:spacevim_custom_color_palette =  [
                \ ['#d8dee9', '#0d61ac', 189, 25],
                \ ['#ffffff', '#262626', 231, 235],
                \ ['#ffffff', '#3a3a3a', 231, 237],
                \ ['#4e4e4e', 239],
                \ ['#ffffff', '#437019', 231, 22],
                \ ['#ffffff', '#870000', 231, 88],
                \ ['#870000', '#000000', 88, 0],
                \ ['#ffffff', '#689d6a', 231, 72],
                \ ['#ffffff', '#8f3f71', 231, 132],
                \ ]


