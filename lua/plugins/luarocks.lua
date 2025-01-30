--Don't have a clue what luarocks is for, but it's a dependency.
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
}
