vim.cmd([[
if (has("autocmd") && !has("gui_running"))
    augroup colorset
        autocmd!
        let s_white = { "gui": "#ABB2BF", "cterm": "145", "cterm16": "7" }
        autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s_white })
    augroup END
endif
]])

vim.cmd('hi Comment cterm=italic')
vim.api.nvim_set_var('onedark_hide_endofbuffer', 1)
vim.api.nvim_set_var('onedark_terminal_italics', 1)
vim.api.nvim_set_var('onedark_termcolors', 256)

vim.cmd('colorscheme onedark')

vim.cmd([[
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
]])
