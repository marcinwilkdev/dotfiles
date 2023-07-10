local M = {
  "rcarriga/nvim-dap-ui",
  commit = "1cd4764221c91686dcf4d6b62d7a7b2d112e0b13",
  tag = "v3.8.3",
  event = "VeryLazy",
  dependencies = { "mfussenegger/nvim-dap" },
  pin = true,
}

M.opts = {
  expand_lines = true,
  icons = { expanded = "", collapsed = "", circular = "" },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
    toggle = "t",
  },
  layouts = {
    {
      elements = {
        { id = "scopes",      size = 0.33 },
        { id = "breakpoints", size = 0.17 },
        { id = "stacks",      size = 0.25 },
        { id = "watches",     size = 0.25 },
      },
      size = 0.33,
      position = "right",
    },
  },
  floating = {
    max_height = 0.9,
    max_width = 0.5,               -- Floats will be treated as percentage of your screen.
    border = vim.g.border_chars,   -- Border style. Can be 'single', 'double' or 'rounded'
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
}

function M.config()
  vim.fn.sign_define("DapBreakpoint", { text = "", texthl = "DiagnosticSignError", linehl = "", numhl = "" })

  require("dapui").setup(M.opts)
end

return M
