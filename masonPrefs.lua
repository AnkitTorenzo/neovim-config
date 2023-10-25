local mason = require('mason')
local masonLspConfig = require("mason-lspconfig")
local lspConfig = require('lspconfig')

mason.setup()
masonLspConfig.setup()

lspConfig.clangd.setup{}
lspConfig.rust_analyzer.setup{}

lspConfig.tsserver.setup{
	filetype = { "typescript", "typescriptreact", "typescript.tsx"},
	root_dir = function ()
		return vim.loop.cwd()
	end
}
