require("mason").setup()
require("mason-lspconfig").setup()

-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities


local lspconfig = require "lspconfig"

--#### Old/default LSP Confings ####--
-- local servers = { "html", "cssls", "eslint_lsp", "tsserver" }
-- lsps with default config
-- for _, lsp in ipairs(servers) do
--   lspconfig[lsp].setup {
--     on_attach = on_attach,
--     on_init = on_init,
--     capabilities = capabilities,
--   }
-- end

local function organizeImports()
   local params = {
        command = "_typescript.organizeImports",
        arguments = {vim.api.nvim_buf_get_name(0)},
    }
    vim.lap.buf.execute_command(params)
end

-- typescript
lspconfig.tsserver.setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
    init_options = {
        preferences = {
            disableSuggestions = true,
        }
    },
    commands = {
        OrganizeImports = {
            organizeImports,
            description = "To Organize Imports"
        }
    }
}
