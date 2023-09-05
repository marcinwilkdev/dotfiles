local M = {
  "michaelb/sniprun",
  commit = "1c4bc063522946676dd178d01d6fc130d3e41da5",
  build = "sh install.sh",
  event = "Bufenter",
  pin = true,
}

M.opts = {
  display = {
    "TempFloatingWindow"
  }
}

return M
