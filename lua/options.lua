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


-- For the cyan cursor
vim.opt.termguicolors = true
-- Define a Neon Teal color group (#00F5D4 is a classic bright neon teal)
vim.api.nvim_set_hl(0, "NeonTealCursor", { bg = "#00F5D4", fg = "#000000" })

-- Tell Neovim to use this highlight group for your cursor
-- n-v-c = Normal, Visual, Command modes (Block cursor)
-- i-ci = Insert, Command-line Insert modes (Vertical bar cursor)
vim.opt.guicursor = "n-v-c:block-NeonTealCursor,i-ci:ver25-NeonTealCursor"
