local M = {}

function M.setup()
    local on_attach = function (_, bufnr)
        local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

        local opts = { noremap=true, silent=true }

        buf_set_keymap("n", "<leader>di", "<Cmd>lua require'jdtls'.organize_imports()<CR>", opts)
        buf_set_keymap("n", "<leader>dt", "<Cmd>lua require'jdtls'.test_class()<CR>", opts)
        buf_set_keymap("n", "<leader>dn", "<Cmd>lua require'jdtls'.test_nearest_method()<CR>", opts)
        buf_set_keymap("v", "<leader>de", "<Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>", opts)
        buf_set_keymap("n", "<leader>de", "<Cmd>lua require('jdtls').extract_variable()<CR>", opts)
        buf_set_keymap("v", "<leader>dm", "<Esc><Cmd>lua require('jdtls').extract_method(true)<CR>", opts)
    end

    local workspace_dir = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')

    local config = {
        cmd = {
            'jdtls',
            '-data', '/home/marcin/.workspace/' .. workspace_dir,
            '-Dlog.level=ALL',
            '--add-modules=ALL-SYSTEM',
            '--add-opens java.base/java.util=ALL-UNNAMED',
            '--add-opens java.base/java.lang=ALL-UNNAMED',
        },
        on_attach = on_attach
    }

    require('jdtls').start_or_attach(config)
end

return M
