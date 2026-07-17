return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 15, -- Height of the terminal split in lines
      open_mapping = [[<C-t>]], -- Bind to Ctrl + t
      hide_numbers = true,
      shade_terminals = true,
      start_in_insert = true,
      insert_mappings = true,
      terminal_mappings = true,
      direction = "horizontal", -- Opens at the bottom like VS Code
      close_on_exit = true,
      shell = vim.o.shell,
    })

    -- Terminal-specific keymaps
    -- This makes it easier to navigate out of the terminal pane or exit terminal mode
    function _G.set_terminal_keymaps()
      local opts = { buffer = 0 }
      -- Press Esc to exit terminal insert mode (makes it easy to copy text)
      vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], opts)
      -- Let Ctrl-hjkl move out of the terminal window directly
      vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
      vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
      vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
      vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
    end

    -- Apply these keymaps only when a terminal buffer opens
    vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
  end,
}
