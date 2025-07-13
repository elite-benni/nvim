-- lazy.nvim
return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  opts = {
    -- add any options here
    -- routes = {
    -- this is to show recording in noice but it is shown in lualine now
    --   {
    --     view = 'notify',
    --     filter = { event = 'msg_showmode' },
    --   },
    -- },
  },
  dependencies = {
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-notify',
  },
}
