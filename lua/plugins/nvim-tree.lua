
--This function to unmap e (since it's one of my arrow keys).
local function my_on_attach(bufnr)
    local api = require("nvim-tree.api")

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end
    -- Remove a default keymap
    local success, _ = pcall(vim.api.nvim_buf_del_keymap, bufnr, "n", "e")
    if not success then
        print("")
    end
    vim.keymap.set("n", "<CR>", api.node.open.edit, opts("Open"))
end







return {
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            -- View settings
            view = {
                side = "right", -- Set the tree view to the right side
            },
            -- Filters to hide certain files/folders
            filters = {
                custom = { "^.git$" }, -- Hide .git folder
            },
            -- Pass the on_attach function to nvim-tree setup
            on_attach = my_on_attach,
        },
    },
}
