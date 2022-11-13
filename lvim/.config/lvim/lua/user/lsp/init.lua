require("user.lsp.languages.rust")
require("user.lsp.languages.c")
require("user.lsp.languages.python")
require("user.lsp.languages.js-ts")
require("user.lsp.languages.latex")
-- require("user.lsp.languages.go")

lvim.format_on_save = false
lvim.lsp.diagnostics.virtual_text = false

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ command = "google_java_format", filetypes = { "java" } },
	{ command = "stylua", filetypes = { "lua" } },
	{ command = "black", filetypes = { "python" } },
	{ command = "latexindent", filetypes = { "tex" } },
	{ command = "prettier", filetypes = { "javascript", "typescript", "javascriptreact", "typescriptreact" } },
})

local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	{ command = "flake8", filetypes = { "python" } },
	{
		command = "shellcheck",
		extra_args = { "--severity", "warning" },
	},
	{
		command = "eslint",
		filetypes = { "typescript", "typescriptreact" },
	},
  { command = "chktex", filetypes = { "tex" } },
})
