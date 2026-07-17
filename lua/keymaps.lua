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


--Telescope stuff:
local builtin = require('telescope.builtin')

-- Telescope stuff: Deferring the require calls to prevent startup errors
-- The Big Three basics:
vim.keymap.set('n', '<leader>ff', function() require('telescope.builtin').find_files() end, { desc = 'Telescope Find Files' })
vim.keymap.set('n', '<leader>fg', function() require('telescope.builtin').live_grep() end, { desc = 'Telescope Live Grep' })
vim.keymap.set('n', '<leader>fb', function() require('telescope.builtin').buffers() end, { desc = 'Telescope Buffers' })
-- A couple more highly useful ones:
vim.keymap.set('n', '<leader>fh', function() require('telescope.builtin').help_tags() end, { desc = 'Telescope Help Tags' })
vim.keymap.set('n', '<leader>fs', function() require('telescope.builtin').git_files() end, { desc = 'Telescope Git Files' })


-- Window Splitting & Navigation:
-- Split windows vertically or horizontally
vim.keymap.set("n", "<leader>v", "<cmd>vsplit<cr>", { desc = "Split Window Vertically" })
vim.keymap.set("n", "<leader>h", "<cmd>split<cr>", { desc = "Split Window Horizontally" })

-- Easy navigation between splits (Hold Ctrl + direction)
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window" })
