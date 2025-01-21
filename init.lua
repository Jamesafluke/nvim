--Maybe look at kickstart.nvim


require("config.lazy")
--require("config.lazy").setup({{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"}})
--require("plugins")
require 'nvim-treesitter.install'.prefer_git = false

vim.opt.tabstop = 4        -- Number of spaces a tab character represents
vim.opt.shiftwidth = 4     -- Number of spaces to use for each level of indentation
vim.opt.expandtab = true   -- Convert tabs to spaces
vim.opt.softtabstop = 4    -- Number of spaces inserted when pressing <Tab>
vim.opt.clipboard = "unnamedplus" -- Makes y or d etc also use the system clipboard
vim.wo.number = true
vim.wo.relativenumber = true

vim.api.nvim_create_user_command("Te", "ToggleTerm", {})
vim.api.nvim_create_user_command("Tree", "NvimTreeOpen", {})

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
