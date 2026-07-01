return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      -- Faster fuzzy sorting (highly recommended)
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        cond = function()
          return vim.fn.executable("make") == 1
        end,
      },
      -- Browse files like a tree
      "nvim-telescope/telescope-file-browser.nvim",
      -- Pick from UI elements (e.g. code actions)
      "nvim-telescope/telescope-ui-select.nvim",
    },
    config = function()
      local telescope = require("telescope")
      local actions = require("telescope.actions")

      telescope.setup({
        defaults = {
          mappings = {
            i = {
              ["<C-k>"] = actions.move_selection_previous,
              ["<C-j>"] = actions.move_selection_next,
              ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
              ["<Esc>"] = actions.close,
            },
          },
          file_ignore_patterns = { "%.git/", "node_modules" },
        },
        extensions = {
          fzf = {},
          file_browser = {
            hijack_netrw = true,
          },
          ["ui-select"] = {
            require("telescope.themes").get_dropdown(),
          },
        },
      })

      telescope.load_extension("fzf")
      telescope.load_extension("file_browser")
      telescope.load_extension("ui-select")

      -- Keymaps
      local map = function(keys, func, desc)
        vim.keymap.set("n", keys, func, { desc = desc })
      end
      local builtin = require("telescope.builtin")

      map("<leader>ff", builtin.find_files,                "Find files")
      map("<leader>fg", builtin.live_grep,                 "Live grep")
      map("<leader>fb", builtin.buffers,                   "Find buffers")
      map("<leader>fh", builtin.help_tags,                 "Help tags")
      map("<leader>fr", builtin.oldfiles,                  "Recent files")
      map("<leader>fs", builtin.grep_string,               "Grep word under cursor")
      map("<leader>fd", builtin.diagnostics,               "Diagnostics")
      map("<leader>fe", "<cmd>Telescope file_browser<cr>", "File browser")
    end,
  },
}
