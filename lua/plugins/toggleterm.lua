return {
    'akinsho/toggleterm.nvim',
    keys = { [[\\]] },
    opts = {
        open_mapping = [[\\]],
        insert_mappings = false,
        terminal_mappings = true,
        autochdir = true,
        hide_numbers = true,
        shade_terminals = true,
        start_in_insert = true,
        direction = 'horizontal',
        close_on_exit = true,
        on_open = function()
            -- Custom key mappings when the terminal opens
            vim.keymap.set("n", "<leader>s", function()
                vim.cmd("ToggleTermSendCurrentLine")
            end, { noremap = true, silent = true })

            vim.keymap.set("v", "<leader>ss", function()
                vim.cmd("ToggleTermSendVisualSelection")
            end, { noremap = true, silent = true })
        end,
    },
}
