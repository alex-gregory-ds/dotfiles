lua require "init"
lua require "plugins"
" lua require "lsp"
lua require "treesitter"
" lua require "completion"

let g:pyindent_open_paren = 'shiftwidth()'

autocmd FileType gitcommit setlocal spell  " Enable spell check in commit messages
autocmd FileType markdown setlocal spell  " Enable spell check in markdown files
autocmd FileType rst setlocal spell  " Enable spell check in restructured text files

syntax on

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

