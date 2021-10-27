local M = {}

function M.setup()
    local workspace_dir = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')

    local config = {
        cmd = {
            'jdtls',
            '-data', '/home/marcin/.workspace/' .. workspace_dir,
            '-Dlog.level=ALL',
            '--add-modules=ALL-SYSTEM',
            '--add-opens java.base/java.util=ALL-UNNAMED',
            '--add-opens java.base/java.lang=ALL-UNNAMED',
        }
    }

    require('jdtls').start_or_attach(config)
end

return M
