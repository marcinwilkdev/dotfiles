-- Additional Plugins
lvim.plugins = {
	{ "morhetz/gruvbox" },
	{ "JuliaEditorSupport/julia-vim" },
	{ "lervag/vimtex" },
	{ "ggandor/leap.nvim" },
	{ "mfussenegger/nvim-jdtls" },
	{ "simrat39/rust-tools.nvim" },
	{ "p00f/clangd_extensions.nvim" },
	{ "jose-elias-alvarez/typescript.nvim" },
	{ "mxsdev/nvim-dap-vscode-js" },
	{ "mfussenegger/nvim-dap-python" },
	{ "karb94/neoscroll.nvim" },
	{
		"zbirenbaum/copilot.lua",
		config = function()
			vim.defer_fn(function()
				require("copilot").setup({
					plugin_manager_path = os.getenv("LUNARVIM_RUNTIME_DIR") .. "/site/pack/packer",
				})
			end, 100)
		end,
	},
	{
		"zbirenbaum/copilot-cmp",
		after = { "copilot.lua" },
		config = function()
			require("copilot_cmp").setup({
				formatters = {
					insert_text = require("copilot_cmp.format").remove_existing,
				},
			})
		end,
	},
	{
		"saecki/crates.nvim",
		tag = "v0.3.0",
		requires = { "nvim-lua/plenary.nvim" },
		config = function()
			require("crates").setup({
				null_ls = {
					enabled = true,
					name = "crates.nvim",
				},
			})
		end,
	},
}
