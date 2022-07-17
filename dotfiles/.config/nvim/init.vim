lua require('config')

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
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
endif

autocmd FileType gitcommit setlocal spell  " Enable spell check in commit messages
autocmd FileType markdown setlocal spell  " Enable spell check in markdown files
autocmd FileType rst setlocal spell  " Enable spell check in restructured text files

" Customise the onedark colours for diffing
if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:dark_red = { "gui": "#4f2727", "cterm": "52" }
    let s:dark_green = { "gui": "#233d1f", "cterm": "22" }
    let s:dark_blue = { "gui": "#243557", "cterm": "17" }
    let s:dark_yellow = { "gui": "#403d1d", "cterm": "53" }
    autocmd ColorScheme * call onedark#set_highlight("DiffAdd", { "bg": s:dark_green })
    autocmd ColorScheme * call onedark#set_highlight("DiffDelete", { "bg": s:dark_red })
    autocmd ColorScheme * call onedark#set_highlight("DiffChange", { "bg": s:dark_blue })
    autocmd ColorScheme * call onedark#set_highlight("DiffText", { "bg": s:dark_yellow })
  augroup END
endif

syntax on
colorscheme onedark

" highlight DiffAdd ctermbg=22 ctermfg=None
" highlight DiffDelete ctermbg=52 ctermfg=None
" highlight DiffChange ctermbg=17 ctermfg=None
" highlight DiffText ctermbg=53 ctermfg=None

" Settings for RST files
augroup RestructuredText
    autocmd!
    autocmd Filetype rst set wrap linebreak  " Text wrapping
    autocmd Filetype rst nnoremap <buffer> j gj
    autocmd Filetype rst nnoremap <buffer> k gk

    " Text wrap lists with indent. See https://vi.stackexchange.com/questions/14932/the-indent-of-wrapped-lines
    autocmd Filetype rst set breakindent breakindentopt=sbr,list:-1 linebreak
    autocmd Filetype rst let &formatlistpat = '^\s*-\s*'  " Treat lines beginning with '- ' as a list.
augroup END

