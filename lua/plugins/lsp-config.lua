return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			lspconfig.lua_ls.setup({
				capabilities = capabilities
			})
			lspconfig.tailwindcss.setup({
				capabilities = capabilities
			})
			lspconfig.golangci_lint_ls.setup({
				capabilities = capabilities
			})
			lspconfig.gopls.setup({
				capabilities = capabilities
			})
			lspconfig.harper_ls.setup({
				capabilities = capabilities
			})
			lspconfig.templ.setup({
				capabilities = capabilities
			})
			lspconfig.eslint.setup({
				capabilities = capabilities
			})
			lspconfig.intelephense.setup({
				capabilities = capabilities
			})
			lspconfig.ts_ls.setup({
				capabilities = capabilities
			})
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
			vim.diagnostic.enable()
			vim.diagnostic.config({
				virtual_text = {
					prefix = "|",
					spacing = 4,
				},
				signs = true,
				underline = true,
				update_in_insert = false,
				severity_sort = true,
			})
		end
	}
}
