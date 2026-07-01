return {
  "obsidian-nvim/obsidian.nvim",
  version = "*",
  -- Only load when you're in your notes folder
  event = {
    "BufReadPre " .. vim.fn.expand("~") .. "/notes/**.md",
    "BufNewFile "  .. vim.fn.expand("~") .. "/notes/**.md",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",  -- for note picker
    "hrsh7th/nvim-cmp",              -- for [[wikilink]] completion
  },
  ---@module 'obsidian'
  ---@type obsidian.config.ClientOpts
  opts = {
    legacy_commands = false,
    workspaces = {
      { name = "notes", path = "~/notes" },
    },

    -- Use Telescope for all pickers (search, tags, etc.)
    picker = {
      name = "telescope.nvim",
    },

    -- New note naming: title-based slugs
    note_id_func = function(title)
      local suffix = ""
      if title ~= nil then
        suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
      else
        for _ = 1, 4 do
          suffix = suffix .. string.char(math.random(65, 90))
        end
      end
      return suffix
    end,

    -- Where new notes land
    notes_subdir = "inbox",

    -- Daily notes config
    daily_notes = {
      folder = "daily",
      date_format = "%Y-%m-%d",
      template = nil,  -- set to "daily.md" if you make templates
    },

    -- Templates folder
    templates = {
      subdir = "templates",
    },

    -- Follow [[links]] with gf
    follow_url_func = function(url)
      vim.fn.jobstart({ "xdg-open", url })  -- Linux; swap for "open" on macOS
    end,

    -- Completion for [[wikilinks]] and tags
    completion = {
      nvim_cmp = true,
      min_chars = 2,
    },

    ui = {
      enable = true,
      checkboxes = {
        [" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
        ["x"] = { char = "", hl_group = "ObsidianDone" },
        [">"] = { char = "", hl_group = "ObsidianRightArrow" },
        ["~"] = { char = "󰰱", hl_group = "ObsidianTilde" },
      },
    },
  },

  config = function(_, opts)
    require("obsidian").setup(opts)

    -- Obsidian-specific keymaps (only meaningful in notes)
    local map = function(keys, cmd, desc)
      vim.keymap.set("n", keys, cmd, { desc = desc, buffer = true })
    end

    vim.api.nvim_create_autocmd("FileType", {
      pattern = "markdown",
      callback = function()
        map("<leader>on", "<cmd>ObsidianNew<cr>",          "New note")
        map("<leader>oo", "<cmd>ObsidianOpen<cr>",         "Open in Obsidian app")
        map("<leader>os", "<cmd>ObsidianSearch<cr>",       "Search notes")
        map("<leader>oq", "<cmd>ObsidianQuickSwitch<cr>",  "Quick switch note")
        map("<leader>ol", "<cmd>ObsidianLinks<cr>",        "List links")
        map("<leader>ob", "<cmd>ObsidianBacklinks<cr>",    "Backlinks")
        map("<leader>ot", "<cmd>ObsidianTags<cr>",         "Tags")
        map("<leader>od", "<cmd>ObsidianDailies<cr>",      "Daily notes")
        map("<leader>oT", "<cmd>ObsidianTemplate<cr>",     "Insert template")
        map("<leader>or", "<cmd>ObsidianRename<cr>",       "Rename note")
        map("<leader>oc", "<cmd>ObsidianToggleCheckbox<cr>","Toggle checkbox")
      end,
    })
  end,
}
