local M = {
    filetype = {
        javascript = {
            require("formatter.filetypes.javascript").pritter
        },
        typescript = {
            require("formatter.filetypes.typescript").pritter
        },
        ["*"] = {
            require("formatter.filetypes.any").remove_trailing_whitespace
        }
    }
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
    command = "FormatWriteLock"
})

return M
