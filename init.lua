--Maybe look at kickstart.nvim


require("config.lazy")
--require("config.lazy").setup({{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}})
--require("plugins")

vim.opt.tabstop = 4        -- Number of spaces a tab character represents
vim.opt.shiftwidth = 4     -- Number of spaces to use for each level of indentation
vim.opt.expandtab = true   -- Convert tabs to spaces
vim.opt.softtabstop = 4    -- Number of spaces inserted when pressing <Tab>
vim.opt.clipboard = "unnamedplus" -- Makes y or d etc also use the system clipboard
vim.opt.wrap = false
vim.wo.number = true
vim.wo.relativenumber = true

vim.api.nvim_create_user_command("Te", "ToggleTerm", {})
vim.api.nvim_create_user_command("Tree", "NvimTreeOpen", {})
vim.api.nvim_create_user_command("Tele", "Telescope", {})

--For Kinesis Keyboard
local opts = { noremap = true, silent = true }

-- Normal mode
vim.api.nvim_set_keymap('n', 'h', '<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'n', '<Down>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'e', '<Up>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'i', '<Right>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'l', 'i', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'm', 'n', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'L', 'I', { noremap = true, silent = true })

-- Visual mode
vim.api.nvim_set_keymap('v', 'h', '<Left>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'n', '<Down>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'e', '<Up>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'i', '<Right>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'l', 'i', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'm', 'n', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'L', 'I', { noremap = true, silent = true })

-- For navigating split view:
-- However, this doesn't work at all. For now I'll try using Ctrl+w+w to navigate.
-- https://neovim.io/doc/user/usr_08.html
vim.api.nvim_set_keymap('n', '<C-w>n', '<C-w><j>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-w>e', '<C-w><k>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-w>i', '<C-w><l>', { noremap = true, silent = true })
