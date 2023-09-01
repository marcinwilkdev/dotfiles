-- Each keymaps setup is a function which should be called when such keymaps need to be configured

M = {
  basic_keymaps = function()
    local keymap = vim.keymap.set
    local opts = { silent = true }

    --Remap space as leader key
    keymap("", "<Space>", "<Nop>", opts)
    vim.g.mapleader = " "

    -- Modes
    --   normal_mode = "n",
    --   insert_mode = "i",
    --   visual_mode = "v",
    --   visual_block_mode = "x",
    --   term_mode = "t",
    --   command_mode = "c",
    --   Better window navigation
    keymap("n", "<C-h>", "<C-w>h", opts)
    keymap("n", "<C-j>", "<C-w>j", opts)
    keymap("n", "<C-k>", "<C-w>k", opts)
    keymap("n", "<C-l>", "<C-w>l", opts)

    -- Navigate buffers
    keymap("n", "<S-l>", ":bnext<CR>", opts)
    keymap("n", "<S-h>", ":bprevious<CR>", opts)

    -- Clear highlights
    keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

    -- Close buffer
    keymap("n", "<leader>c", "<cmd>lua require('bufdelete').bufdelete(0)<CR>", opts)

    -- Close other windows
    keymap("n", "<leader>o", ":only<CR>", opts)

    -- Visual --
    -- Stay in indent mode
    keymap("v", "<", "<gv", opts)
    keymap("v", ">", ">gv", opts)

    -- Plugins --

    -- NvimTree
    keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

    -- Fzf
    keymap("n", "<leader>ff", ":Files<CR>", opts)
    keymap("n", "<leader>ft", ":RG<CR>", opts)
    keymap("n", "<C-r>", ":History:<CR>", opts)

    -- Comment
    keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
    keymap("x", "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", opts)

    -- DAP
    keymap("n", "<leader>db", "<cmd>lua require('dap').toggle_breakpoint()<cr>", opts)
    keymap("n", "<leader>dc", "<cmd>lua require('dap').continue()<cr>", opts)
    keymap("n", "<leader>ds", "<cmd>lua require('dap').step_into()<cr>", opts)
    keymap("n", "<leader>dn", "<cmd>lua require('dap').step_over()<cr>", opts)
    keymap("n", "<leader>df", "<cmd>lua require('dap').step_out()<cr>", opts)
    keymap("n", "<leader>dr", "<cmd>lua require('dap').repl.toggle()<cr>", opts)
    keymap("n", "<leader>du", "<cmd>lua require('dapui').toggle()<cr>", opts)
    keymap("n", "<leader>dk", "<cmd>lua require('dapui').eval()<cr>", opts)
    keymap("v", "<leader>dk", "<cmd>lua require('dapui').eval()<cr>", opts)
    keymap("n", "<leader>dt", "<cmd>lua require('dap').terminate()<cr>", opts)
  end,

  cscope_keymaps = function()
    local opts = { noremap = true, silent = true }
    local keymap = vim.api.nvim_buf_set_keymap

    local bufnr = vim.api.nvim_get_current_buf()
    keymap(bufnr, "n", "gc", "<cmd>lua require('cscope_maps').cscope_prompt('c', vim.fn.expand('<cword>'))<CR>", opts)
    keymap(bufnr, "n", "gd", "<cmd>lua require('cscope_maps').cscope_prompt('g', vim.fn.expand('<cword>'))<CR>", opts)
    keymap(bufnr, "n", "gf", "<cmd>lua require('cscope_maps').cscope_prompt('f', vim.fn.expand('<cword>'))<CR>", opts)
    keymap(bufnr, "n", "gr", "<cmd>lua require('cscope_maps').cscope_prompt('s', vim.fn.expand('<cword>'))<CR>", opts)
    keymap(bufnr, "n", "gt", "<cmd>lua require('cscope_maps').cscope_prompt('t', vim.fn.expand('<cword>'))<CR>", opts)
  end,

  omnisharp_keymaps = function()
    local opts = { noremap = true, silent = true }
    local keymap = vim.api.nvim_buf_set_keymap

    local bufnr = vim.api.nvim_get_current_buf()
    keymap(bufnr, "n", "gd", "<cmd>OmniSharpGotoDefinition<CR>", opts)
    keymap(bufnr, "n", "K",  "<cmd>OmniSharpDocumentation<CR>", opts)
    keymap(bufnr, "n", "gI", "<cmd>OmniSharpFindImplementations<CR>", opts)
    keymap(bufnr, "n", "gr", "<cmd>OmniSharpFindUsages<CR>", opts)
    keymap(bufnr, "n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
    keymap(bufnr, "n", "<leader>la", "<cmd>OmniSharpGetCodeActions<cr>", opts)
    keymap(bufnr, "n", "<leader>lj", "<cmd>OmniSharpNavigateDown<cr>", opts)
    keymap(bufnr, "n", "<leader>lk", "<cmd>OmniSharpNavigateUp<cr>", opts)
    keymap(bufnr, "n", "<leader>lr", "<cmd>OmniSharpRename<cr>", opts)
    keymap(bufnr, "n", "<leader>lf", "<cmd>OmniSharpCodeFormat<cr>", opts)
  end,

  lsp_keymaps = function(bufnr)
    local opts = { noremap = true, silent = true }
    local keymap = vim.api.nvim_buf_set_keymap

    keymap(bufnr, "n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
    keymap(bufnr, "n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
    keymap(bufnr, "n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
    keymap(bufnr, "n", "gI", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
    keymap(bufnr, "n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
    keymap(bufnr, "n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
    keymap(bufnr, "n", "<leader>li", "<cmd>LspInfo<cr>", opts)
    keymap(bufnr, "n", "<leader>lI", "<cmd>Mason<cr>", opts)
    keymap(bufnr, "n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
    keymap(bufnr, "n", "<leader>lj", "<cmd>lua vim.diagnostic.goto_next({buffer=0})<cr>", opts)
    keymap(bufnr, "n", "<leader>lk", "<cmd>lua vim.diagnostic.goto_prev({buffer=0})<cr>", opts)
    keymap(bufnr, "n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
    keymap(bufnr, "n", "<leader>ls", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
    keymap(bufnr, "n", "<leader>lq", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
    keymap(bufnr, "n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", opts)
  end,

  illuminate_keymaps = function()
    local keymap = vim.api.nvim_set_keymap
    local opts = { noremap = true }

    keymap("n", "<a-n>", "<cmd>lua require('illuminate').next_reference({wrap=true})<CR>", opts)
    keymap("n", "<a-p>", "<cmd>lua require('illuminate').next_reference({reverse=true,wrap=true})<CR>", opts)
  end
}

M.basic_keymaps()

return M
