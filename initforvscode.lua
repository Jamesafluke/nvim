#Note: This is intended to be copy-pasted into vscode's nvim config file. And yes, there will probably be drift.

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


local opts = { noremap = true, silent = true }

vim.keymap.set('i', '<C-BS>', '<C-w>',        { desc = 'Delete previous word (Insert)' })
vim.keymap.set('c', '<C-BS>', '<C-w>',        { desc = 'Delete previous word (Cmdline)' })
vim.keymap.set('i', '<C-Del>', '<C-o>de',     { desc = 'Delete next word (Insert)' })
vim.keymap.set('c', '<C-Del>', '<S-Right><C-w>', { desc = 'Delete next word (Cmdline)' })
vim.keymap.set('n', '<C-w>', '<Nop>',         { silent = true })
vim.keymap.set('v', '>', '>gv', opts)
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

vim.schedule(function()
  vim.opt.clipboard = "unnamedplus"
end)
