require("config.lazy")
require("plugins")

vim.opt.tabstop = 4        -- Number of spaces a tab character represents
vim.opt.shiftwidth = 4     -- Number of spaces to use for each level of indentation
vim.opt.expandtab = true   -- Convert tabs to spaces
vim.opt.softtabstop = 4    -- Number of spaces inserted when pressing <Tab>
vim.opt.clipboard = "unnamedplus" -- Makes y or d etc also use the system clipboard
vim.wo.relativenumber = true

vim.api.nvim_create_user_command("Te", "ToggleTerm", {})
vim.api.nvim_create_user_command("Tree", "NvimTreeOpen", {})

