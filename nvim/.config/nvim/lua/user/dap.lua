local M = {
  "mfussenegger/nvim-dap",
  tag = "0.6.0",
  event = "VeryLazy",
  pin = true,
}

function M.config()
  local dap = require("dap")

  local dap_ui_status_ok, dapui = pcall(require, "dapui")
  if not dap_ui_status_ok then
    return
  end

  dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
  end

  dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
  end

  dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
  end

  dap.adapters.coreclr = {
    type = "executable",
    command = vim.fn.stdpath("data") .. "/dapinstall/dnetcs/netcoredbg/netcoredbg",
    args = { "--interpreter=vscode" },
  }

  dap.configurations.cs = {
    {
      type = "coreclr",
      name = "launch - netcoredbg",
      request = "attach",
      processId = require('dap.utils').pick_process,
    },
  }
end

return M
