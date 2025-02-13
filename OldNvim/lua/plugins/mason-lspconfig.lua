return{
    "williamboman/mason-lspconfig.nvim",
    config = function()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "yamlls",
                --"azure_pipelines_ls",
                "bicep",
                "lua_ls",
                "terraformls",
                "powershell_es"
            },
            automatic_installation = true
        })
    end
}
