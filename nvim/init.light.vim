source ~/editor-config/nvim/init.base.vim

colorscheme OceanicNextLight
let g:airline_theme='oceanicnextlight'
if has("gui_running")
	autocmd GUIEnter * set vb t_vb=
  " set term=xterm-256color
  if has("win32")
    set term=win32
  else
    set term=xterm-256color
  endif
  colorscheme OceanicNextLight
  let g:airline_theme='oceanicnextlight'
else
  if(has("win32") || has("win16"))
    colorscheme industry
  else
    colorscheme OceanicNextLight
    let g:airline_theme='oceanicnextlight'
  "  colorscheme mustang
  " else
  "   colorscheme lucius
  "   LuciusBlack
  endif
endif
let g:airline_theme='oceanicnext'
let g:airline#extensions#tabline#enabled = 1
