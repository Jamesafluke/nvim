--Install packages with :MasonInstall <packagename>
--:Mason
--https://github.com/neovim/nvim-lspconfig
--
--How to use installed packages:
    --LSP: lspconfig & mason-lspconfig.nvim
    --DAP: nvim-dap & nvim-dap-ui
    --Linters: null-ls.nvim or nvim-lint
    --Formatters: null-ls.nvim or formatter.nvim

return{
    "williamboman/mason.nvim",
    opts = {
        -- The directory in which to install packages.
        install_root_dir = vim.fn.stdpath("data") .. "/mason",
        log_level = vim.log.levels.INFO,
        max_concurrent_installers = 4,
        registries = {
            "github:mason-org/mason-registry",
        },
        providers = {
            "mason.providers.registry-api",
            "mason.providers.client",
        },
        github = {
            download_url_template = "https://github.com/%s/releases/download/%s/%s",
        },
        ui = {
            -- Whether to automatically check for new versions when opening the :Mason window.
            check_outdated_packages_on_open = true,

            -- The border to use for the UI window. Accepts same border values as |nvim_open_win()|.
            border = "rounded",

            -- Width of the window. Accepts:
            -- - Integer greater than 1 for fixed width.
            -- - Float in the range of 0-1 for a percentage of screen width.
            width = 0.8,

            -- Height of the window. Accepts:
            -- - Integer greater than 1 for fixed height.
            -- - Float in the range of 0-1 for a percentage of screen height.
            height = 0.9,
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            },
            keymaps = {
                -- Keymap to expand a package
                toggle_package_expand = "<CR>",
                -- Keymap to install the package under the current cursor position
                install_package = "i",
                -- Keymap to reinstall/update the package under the current cursor position
                update_package = "u",
                -- Keymap to check for new version for the package under the current cursor position
                check_package_version = "c",
                -- Keymap to update all installed packages
                update_all_packages = "U",
                -- Keymap to check which installed packages are outdated
                check_outdated_packages = "C",
                -- Keymap to uninstall a package
                uninstall_package = "X",
                -- Keymap to cancel a package installation
                cancel_installation = "<C-c>",
                -- Keymap to apply language filter
                apply_language_filter = "<C-f>",
                -- Keymap to toggle viewing package installation log
                toggle_package_install_log = "<CR>",
                -- Keymap to toggle the help view
                toggle_help = "g?",
            },
        },
    },
}
