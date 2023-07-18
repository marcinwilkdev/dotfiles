local M = {
  "mfussenegger/nvim-dap",
  tag = "0.6.0",
  event = "VeryLazy",
  pin = true,
}

function M.config()
  local dap = require("dap")

  vim.fn.jobstart(
    { "cat", "/proc/sys/kernel/yama/ptrace_scope" },
    {
      stdout_buffered = true,
      on_stdout = function(job_id, data, event)
        if (event == "stdout") and (data[1] == "1") then
          print("/proc/sys/kernel/yama/ptrace_scope not configured")
        end

        vim.fn.jobstop(job_id)
      end
    }
  )

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

  dap.adapters.cppdbg = {
    id = "cppdbg",
    type = "executable",
    command = vim.fn.stdpath("data") .. "/dapinstall/ccppr_vsc/extension/debugAdapters/bin/OpenDebugAD7",
  }

  dap.adapters.coreclr = {
    type = "executable",
    command = vim.fn.stdpath("data") .. "/dapinstall/dnetcs/netcoredbg/netcoredbg",
    args = { "--interpreter=vscode" },
  }

  dap.configurations.c = {
    {
      name = 'linux on port 3333',
      type = 'cppdbg',
      request = 'launch',
      MIMode = 'gdb',
      miDebuggerServerAddress = 'localhost:3333',
      miDebuggerPath = '/usr/bin/gdb-multiarch',
      cwd = '${workspaceFolder}',
      program = vim.fn.getcwd() .. "/vmlinux"
    },
    {
      name = 'tlib',
      type = 'cppdbg',
      request = 'attach',
      processId = require('dap.utils').pick_process,
      program = "/usr/bin/dotnet",
      args = { "/home/mwilk/dev/renode-hq/src/renode/output/bin/Debug/net6.0/Renode.dll" },
      setupCommands = {
        {
          text = "handle SIGXCPU SIG33 SIG34 SIG35 SIG36 SIG37 SIGPWR nostop noprint",
          description = "Handle signals",
          ignoreFailures = false
        }
      }
    }
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
