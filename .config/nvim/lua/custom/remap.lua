vim.g.mapleader = " "

vim.keymap.set("n", "<leader>ga", ":!git add .<CR>", { silent = true })
vim.keymap.set("n", "<leader>gs", ":!git status<CR>")
vim.keymap.set("n", "<leader>gd", ":!git diff<CR>")
vim.keymap.set("n", "<leader>gds", ":!git diff --staged<CR>")

