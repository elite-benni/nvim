-- In your plugins configuration file (e.g., plugins/lsp.lua)
return {
  {
    'nvimdev/lspsaga.nvim',
    config = function()
      require('lspsaga').setup {}
    end,
    dependencies = {
      'nvim-treesitter/nvim-treesitter', -- Required
      'nvim-tree/nvim-web-devicons', -- Optional
    },
  },
}
