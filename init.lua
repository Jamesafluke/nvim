--Maybe look at kickstart.nvim

--require("plugins.init")

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins.luarocks" },
    { import = "plugins.nightfly" },
    { import = "plugins.nvim-tree" },
    { import = "plugins.telescope" },
    { import = "plugins.today" },
    { import = "plugins.toggleterm" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})




    vim.opt.tabstop = 4        -- Number of spaces a tab character represents
    vim.opt.shiftwidth = 4     -- Number of spaces to use for each level of indentation
    vim.opt.expandtab = true   -- Convert tabs to spaces
    vim.opt.softtabstop = 4    -- Number of spaces inserted when pressing <Tab>
    vim.opt.clipboard = "unnamedplus" -- Makes y or d etc also use the system clipboard
    vim.opt.wrap = false
    vim.opt.scrolloff = 8
    vim.wo.number = true
    vim.wo.relativenumber = true

    vim.g.mapleader = " "

    vim.api.nvim_create_user_command("Te", "ToggleTerm", {})
    vim.api.nvim_create_user_command("Tree", "NvimTreeOpen", {})
        vim.api.nvim_create_user_command("Tele", "Telescope", {})
    vim.keymap.set('n', '<leader>e', ":NvimTreeToggle<cr>", opts)

    --One that lets me select and move lines up and down.
    vim.keymap.set("v", "N", ":m '>+1<CR>gv-gv")
    vim.keymap.set("v", "E", ":m '<-2<CR>gv-gv")

    vim.keymap.set("n", "<C-d>", "<C-d>zz")
    vim.keymap.set("n", "<C-u>", "<C-u>zz")



    --Kinesis Keyboard Stuff!
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
