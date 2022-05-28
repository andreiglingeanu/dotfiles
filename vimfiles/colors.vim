"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif

if has('macunix') || system('uname -o') =~? '^darwin'
	set t_ZH=^[[3m t_ZR=^[[23m " Set the italics code

endif

if !has("gui_running")
  " colorscheme one
  " let g:one_allow_italics = 1
  set background=dark

  colorscheme nightfox
  " colorscheme PaperColor

   " colorscheme xcodelight

  let g:sierra_Pitch = 1
  " colorscheme sierra
  " let g:sierra_Midnight = 1
  " colorscheme sierra

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
  " colorscheme devbox-dark-256
  " let g:seoul256_background = 256
  " colorscheme spacecamp
  " let g:molokai_original=1
else
  set background=light
  " colorscheme vividchalk
  " colorscheme solarized
endif

