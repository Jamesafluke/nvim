vim.o.autowriteall = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.scrolloff = 18
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.conceallevel = 2

--Setting at the time I (try to) start using Telescope (again).
vim.g.mapleader = " "

--Telescope stuff:
local builtin = require('telescope.builtin')

