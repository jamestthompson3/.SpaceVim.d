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


