return {
  cmd = {
    vim.fn.stdpath("data") .. "/mason/bin/omnisharp",
  },
  root_dir = function(fname)
    return require("lspconfig").util.root_pattern("*_NET.sln")(fname)
  end,
  handlers = {
    ["textDocument/definition"] = require("omnisharp_extended").handler,
  }
}
