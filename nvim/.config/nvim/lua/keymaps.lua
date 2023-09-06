-- Each keymaps setup is a function which should be called when such keymaps need to be configured

M = {
  basic_keymaps = function()
    local keymap = vim.keymap.set
    local opts = { silent = true }

    -- Remap space as leader key
    keymap("", "<Space>", "<Nop>", opts)
    vim.g.mapleader = " "

    -- Better window navigation
    keymap("n", "<C-h>", "<C-w>h", opts)
    keymap("n", "<C-j>", "<C-w>j", opts)
    keymap("n", "<C-k>", "<C-w>k", opts)
    keymap("n", "<C-l>", "<C-w>l", opts)

    -- Navigate buffers
    keymap("n", "<S-l>", ":bnext<CR>", opts)
    keymap("n", "<S-h>", ":bprevious<CR>", opts)

    -- Move code lines
    keymap("n", "<A-j>", ":m .+1<CR>==", opts)
    keymap("n", "<A-k>", ":m .-2<CR>==", opts)
    keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
    keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

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

    -- NvimTree
    keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

    -- Fzf
    keymap("n", "<leader>ff", ":Files<CR>", opts)
    keymap("n", "<leader>ft", ":RG<CR>", opts)
    keymap("n", "<S-C-r>", ":History:<CR>", opts)

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
  end,

  gitsigns_keymaps = function(bufnr)
    local gs = package.loaded.gitsigns

    local function map(mode, l, r, opts)
      opts = opts or { noremap = true, silent = true }
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Navigation
    map('n', '<leader>gj', function()
      vim.schedule(function() gs.next_hunk() end)
      return '<Ignore>'
    end, {expr=true})

    map('n', '<leader>gk', function()
      vim.schedule(function() gs.prev_hunk() end)
      return '<Ignore>'
    end, {expr=true})

    -- Actions
    map('n', '<leader>gs', gs.stage_hunk)
    map('n', '<leader>gr', gs.reset_hunk)
    map('v', '<leader>gs', function() gs.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
    map('v', '<leader>gr', function() gs.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
    map('n', '<leader>gS', gs.stage_buffer)
    map('n', '<leader>gu', gs.undo_stage_hunk)
    map('n', '<leader>gR', gs.reset_buffer)
    map('n', '<leader>gp', gs.preview_hunk)
    map('n', '<leader>gb', function() gs.blame_line{full=true} end)
    map('n', '<leader>tb', gs.toggle_current_line_blame)
    map('n', '<leader>gd', gs.diffthis)
    map('n', '<leader>gD', function() gs.diffthis('~') end)
    map('n', '<leader>td', gs.toggle_deleted)

    -- Text object
    map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
  end
}

M.basic_keymaps()

return M
