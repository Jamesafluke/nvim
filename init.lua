#ctl w for closing tabs
vim.keymap.set("n", "<C-w>", "<Nop>", { silent = true })

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.undofile = true

--Indent selected lines but stay selected.
local opts = { noremap = true, silent = true }
vim.keymap.set('v', '>', '>gv', opts)
vim.keymap.set('v', '<', '<gv', opts)

vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

--Keep cursor centered while jumping.
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")


vim.opt.ignorecase = true
vim.opt.smartcase = true


vim.opt.scrolloff = 18
