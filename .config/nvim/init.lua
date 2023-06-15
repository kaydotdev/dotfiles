require("custom")

vim.opt.encoding = "utf-8"

-- Enable all mouse functions in all modes
vim.cmd("set mouse=a")

-- Visual settings
vim.cmd("set guifont=firacode:h12")

-- Line number settings
vim.cmd("set number")
vim.cmd("set relativenumber")

-- Code identation settings
vim.cmd("set autoindent")
vim.cmd("set smarttab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- Prevent automatic code folding
vim.cmd("set nofoldenable")

