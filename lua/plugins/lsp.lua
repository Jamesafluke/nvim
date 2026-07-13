return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "terraformls", "tflint" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    config = function()
      -- Use the new native Neovim v0.11+ configuration style
      -- instead of the deprecated require('lspconfig')
      
      -- Configure Terraform Language Server
      vim.lsp.config("terraformls", {})
      
      -- Configure TFLint
      vim.lsp.config("tflint", {})

      -- Global mappings for LSP actions
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to Definition" })
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, { desc = "Hover Documentation" })
      vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = "Rename Symbol" })
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "Code Action" })
    end,
  }
}
