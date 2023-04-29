-- Enable spell checking
vim.api.nvim_create_autocmd(
    "FileType",
    { pattern = { "gitcommit", "markdown", "rst" }, command = "setlocal spell" }
)

local rst_grp = vim.api.nvim_create_augroup("RestructuredText", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "rst" },
    command = "set wrap linebreak",
    group   = rst_grp
})
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "rst" },
    command = "nnoremap <buffer> j gj",
    group   = rst_grp
})
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "rst" },
    command = "nnoremap <buffer> k gk",
    group   = rst_grp
})
-- Use the indent at the start of the line when the line wraps
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "rst" },
    command = "set breakindent breakindentopt=sbr,list:-1 linebreak",
    group   = rst_grp
})
-- Indent lines that start with a '-' when the wrap
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "rst" },
    command = "let &formatlistpat = '^\\s*-\\s*'",
    group   = rst_grp
})

