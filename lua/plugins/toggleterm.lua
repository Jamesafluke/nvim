return {
    'akinsho/toggleterm.nvim',
    keys = { [[\\]] },
    config = function()
        require("toggleterm").setup({
            open_mapping = [[\\]],
            insert_mappings = false,
            terminal_mappings = true,
            autochdir = true,
            hide_numbers = true,
            --shade_terminals = true,
            start_in_insert = true,
            direction = 'horizontal',
            close_on_exit = true,
        })

        vim.api.nvim_set_keymap('t', '<Esc>', [[<C-\><C-N>]], { noremap = true, silent = true })

        vim.keymap.set("n", "<leader>s", function()
            vim.cmd("ToggleTermSendCurrentLine")
        end, { noremap = true, silent = true })

        vim.keymap.set("v", "<leader>ss", function()
            vim.cmd("ToggleTermSendVisualSelection")
        end, { noremap = true, silent = true })
    end,
}
