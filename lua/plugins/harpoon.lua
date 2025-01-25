return {
    "theprimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
        local harpoon = require("harpoon")
        harpoon.setup()
        vim.keymap.set("n", "<leader>a", function() require("harpoon"):list():add() end)
        vim.keymap.set("n", "<leader>r", function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end)

        vim.keymap.set("n", "<C-z>", function() require("harpoon"):list():select(1) end)
        vim.keymap.set("n", "<C-x>", function() require("harpoon"):list():select(2) end)
        vim.keymap.set("n", "<C-c>", function() require("harpoon"):list():select(3) end)
        vim.keymap.set("n", "<C-v>", function() require("harpoon"):list():select(4) end)

        --vim.keymap.set("n", "<C-S-a>", function() harpoon:list():prev() end)
        --vim.keymap.set("n", "<C-S-r>", function() require("harpoon"):list():next() end)
    end, 
}
