local M = {
  "mfussenegger/nvim-dap",
  commit = "6b12294a57001d994022df8acbe2ef7327d30587",
  event = "VeryLazy",
}

function M.config()
  local dap = require "dap"

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

  dap.adapters.gdb = {
    type = "executable",
    executable = {
      command = "gdb",
      args = { "--port", "${port}" },
    },
  }

  dap.adapters.coreclr = {
    type = "executable",
    command = vim.fn.stdpath("data") .. "/dapinstall/dnetcs/netcoredbg/netcoredbg",
    args = { "--interpreter=vscode" },
  }

  dap.configurations.c = {
    {
      name = "launch - gdb",
      type = "codelldb",
      request = "attach",
      port = "3333",
    },
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
