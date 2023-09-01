local M = {
  "ms-jpq/coq_nvim",
  commit = "cb44d4df9caa4a5a1534f4919d9f595e7c9bf6bf",
  event = {
    "InsertEnter",
    "CmdlineEnter",
  },
  dependencies = {
    { "ms-jpq/coq.artifacts",  commit = "af92b636ceee8c657463fd816146b28d43ace732" },
    { "ms-jpq/coq.thirdparty", commit = "47a748c18d6378df7aa033527d1b56d6dec94dc5" }
  },
  pin = true,
}

vim.g.coq_settings = { auto_start = 'shut-up' }

return M
