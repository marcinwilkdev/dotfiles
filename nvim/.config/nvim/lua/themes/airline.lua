vim.api.nvim_set_var('airline#extensions#tabline#enabled', 1)
vim.api.nvim_set_var('airline#extensions#tabline#left_sep', '')
vim.api.nvim_set_var('airline#extensions#tabline#left_alt_sep', '')
vim.api.nvim_set_var('airline#extensions#tabline#right_sep', '')
vim.api.nvim_set_var('airline#extensions#tabline#right_alt_sep', '')

vim.api.nvim_set_var('airline_powerline_fonts', 1)

vim.cmd([[
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.linenr = ' '
let g:airline_symbols.colnr = ' '
let g:airline_symbols.maxlinenr = ''
]])

vim.api.nvim_set_var('airline_left_sep', '')
vim.api.nvim_set_var('airline_right_sep', '')

vim.api.nvim_set_var('airline_theme', 'onedark')
