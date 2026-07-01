return {
  "gbprod/yanky.nvim",
  dependencies = {
    -- Optional: adds a nice picker UI if you use Telescope
    { "nvim-telescope/telescope.nvim" },
  },
  config = function()
    require("yanky").setup({
      ring = {
        history_length = 100,
        storage = "shada", -- persists your clipboard history across restarts
        sync_with_numbered_registers = true,
        cancel_event = "update",
      },
      picker = {
        select = {
          action = nil, -- use default put action
        },
        telescope = {
          use_default_mappings = true,
        },
      },
      system_clipboard = {
        sync_with_ring = true,
      },
    })

    -- === Keymaps ===
    -- Cycle through your clipboard history *after* pasting
    vim.keymap.set("n", "<c-p>", "<Plug>(YankyCycleForward)")
    vim.keymap.set("n", "<c-n>", "<Plug>(YankyCycleBackward)")

    -- Open your full clipboard history in a Telescope picker
    vim.keymap.set("n", "<leader>p", "<cmd>Telescope yanky<cr>", { desc = "Open Yank History" })

    -- Maintain cursor position after yanking
    vim.keymap.set({"n", "x"}, "y", "<Plug>(YankyYank)")
  end,
}