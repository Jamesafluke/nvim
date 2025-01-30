--This is where I configure the lsps specified in mason-lspconfig.lua

return{
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require("lspconfig")

        -- YAML Language Server
        lspconfig.yamlls.setup({
            settings = {
                yaml = {
                    schemas = {
                        ["https://json.schemastore.org/kubernetes.json"] = "/*.k8s.yaml",
                        ["https://json.schemastore.org/azure-pipelines.json"] = "azure-pipelines.yml",
                    },
                    validate = true,
                    format = { enable = true },
                },
            },
        })

        -- Azure Pipelines Language Server
        --lspconfig.azure_pipelines_ls.setup({
            --filetypes = { "yaml" },
        --})

        lspconfig.bicep.setup({
        })
        lspconfig.lua_ls.setup({
        })
        lspconfig.terraformls.setup({
        })
        lspconfig.powershell_es.setup({
            filetypes = {"ps1", "psm1", "psd1"},
            bundle_path = "C:/Users/v-jfluckiger/AppData/Local/nvim-data/mason/packages/powershell-editor-services",
            --bundle_path = "C:\Users\v-jfluckiger\AppData\Local\nvim-data\mason\packages\powershell-editor-services",
            settings = {powershell = { codeFormatting = { Preset = 'OTBS' } } },
            init_options = {
                enableProfileLoading = false,
            },

        })
    end
}

