set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark
if !has("gui_running")
  " colorscheme solarized8_dark_high
  colorscheme desert

  " let g:solarized_termcolors=256
  " colorscheme t256
  " colorscheme solarized
  " colorscheme seoul256-light
  " colorscheme badwolf
  " colorscheme Benokai
  " colorscheme Dracula
  " let g:badwolf_darkgutter = 1
  " let g:badwolf_tabline = 2
  " let g:badwolf_css_props_highlight = 1
  "colorscheme devbox-dark-256
  " let g:seoul256_background = 256
  " colorscheme molokai
  " let g:molokai_original=1
  set background=dark
else
  set background=light
  " colorscheme vividchalk
  " colorscheme solarized
endif

