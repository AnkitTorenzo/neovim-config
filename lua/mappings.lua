require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<leader>db", ":DapToggleBreakpoint <CR>", {desc = "Add breakpoint as line"})
map("n", "<leader>dr", ":DapContinue <CR>", {desc = "Run Or continue the debugger"})

map("n", "<leader>oi", ":OrganizeImports <CR>", {desc = "Runs Organize Imports(custom lsp command) for type/java-script"})
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
local M = {}

M.general = {
  n = {
    ["<C-h>"] = {"<cmd> TmuxNavigatorLeft<CR>", "window left" },
    ["<C-l>"] = {"<cmd> TmuxNavigatorRight<CR>", "window right" },
    ["<C-j>"] = {"<cmd> TmuxNavigatorDown<CR>", "window down" },
    ["<C-k>"] = {"<cmd> TmuxNavigatorUp<CR>", "window up" },
  }
}

M.dap = {
    plugin = true,
    n = {
        ["<leader>db"] = {
            "<cmd> DapToggleBreakpoint <CR>",
            "Add breakpoint at line"
        },
        ["<leader>dr"] = {
            "<cmd> DapContinue <CR>",
            "Run Or continue the debugger"
        }
    }
}
return M
