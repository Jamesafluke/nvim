return {
    {
		"camspiers/luarocks",
		dependencies = {
			"rcarriga/nvim-notify", -- Optional dependency
		},
		opts = {
			rocks = { "fzy" } -- Specify LuaRocks packages to install
		}
	},
	{
		"bluz71/vim-nightfly-guicolors",
		priority = 1000,
		config = function()
		vim.cmd([[colorscheme nightfly]])
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
    		"nvim-tree/nvim-web-devicons",
		},
		opts = {
		view = { side = "left",	},
		filters = { custom = { "^.git$" } },
	},
		config = function()
		require("nvim-tree").setup {}
		end,
	},
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
    },
    {
	    'akinsho/toggleterm.nvim', version = "*", config = true
    }
}
