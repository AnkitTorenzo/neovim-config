local augroup = vim.api.nvim_create_augroup("LAPFormatting", {})
local null_ls = require("null-ls")

local opts = {
    source = {
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.formatting.prettier,
    },
    on_attach = function (client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.vim_clear_autocmds({
                group = augroup,
                buffer = bufnr,
            })

            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function ()
                   vim.lap.buf.format({bufnr = bufnr})
                end
            })
        end
    end
}

return opts
