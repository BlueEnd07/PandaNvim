return{
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls","tsserver"}
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    lazy=false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig=require('lspconfig')
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
 
      vim.keymap.set('n','K', vim.lsp.buf.hover,{})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  },
  {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    config=function()
      require('mason-tool-installer').setup ({
      ensure_installed = {
          'stylua',
          'eslint_d',
          'prettier',
          'shellcheck',
        }
      })
    end
  }


}
