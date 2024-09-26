-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local servers = { "html", "cssls" }

-- lsps with default config
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		on_init = on_init,
		capabilities = capabilities,
	})
end

lspconfig.lua_ls.setup({})
lspconfig.gopls.setup({
	settings = {
		gopls = {
			analyses = {
				unusedparams = false,
			},
			staticcheck = false,
			gofumpt = true,
		},
	},
})
-- lspconfig.pylyzer.setup {}
lspconfig.pyright.setup({})
lspconfig.rust_analyzer.setup({
	["rust-analyzer"] = {
		checkOnSave = {
			command = "clippy",
		},
	},
})
lspconfig.bashls.setup({})
-- lspconfig.tsserver.setup {}
lspconfig.html.setup({})
