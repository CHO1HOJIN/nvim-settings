local keyMapper = require("utils.keyMapper").mapKey

return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd", "vimls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.pyright.setup({})
			lspconfig.clangd.setup({})
			-- lspconfig.fsharp_language_server.setup({})
			lspconfig.fsautocomplete.setup({})
			lspconfig.ocamlls.setup({})
			lspconfig.rust_analyzer.setup({})
			lspconfig.vimls.setup({})
			lspconfig.solidity.setup({})
			lspconfig.jsonls.setup({})
			lspconfig.html.setup({})
			lspconfig.cssls.setup({})

			-- vim.lsp.buf.hover
			-- vim.lsp.buf.definition
			-- vim.lsp.buf.code_action
			keyMapper("K", vim.lsp.buf.hover)
			keyMapper("gd", vim.lsp.buf.definition)
			keyMapper("<leader>ca", vim.lsp.buf.code_action)
		end,
	},
}
