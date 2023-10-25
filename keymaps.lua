-- All the key-bindings goes here
vim.keymap.set("n", "<leader>e", ":Lexplore<cr>")
vim.keymap.set({"n", "v", "x", "s"}, "<leader>w", ":w<cr>")
vim.keymap.set("n", "<tab>", ":bn<cr>")
vim.keymap.set("n", "<s-tab>", ":bp<cr>")
vim.keymap.set("n", "yn", "yyp")
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")
vim.keymap.set("i", "<A-j>" ,"<Esc>:m .+1<CR>==gi")
vim.keymap.set("i", "<A-k>" ,"<Esc>:m .-2<CR>==gi")
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l", {noremap = true, silent = true})

-- terminal
vim.keymap.set("t", "<C-h>", "<cmd>wincmd h<CR>")
vim.keymap.set("t", "<C-j>", "<cmd>wincmd j<CR>")
vim.keymap.set("t", "<C-k>", "<cmd>wincmd k<CR>")
vim.keymap.set("t", "<C-l>", "<cmd>wincmd l<CR>")

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("n", "<leader>T", ":terminal<cr>")



-- All Commands goes hereMap("n", "<C-h>", "<C-w>h")
