-- lua/plugins/lualine.lua

return {
  'nvim-lualine/lualine.nvim',
  -- Dependencies to ensure icons and noice integration work correctly
  dependencies = { 'nvim-web-devicons', 'folke/noice.nvim' },
  opts = function()
    return {
      options = {
        icons_enabled = true,
        theme = 'jellybeans',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        },
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = {
          -- Noice status message component from our previous conversation
          {
            function()
              return require('noice').api.statusline.mode.get()
            end,
            cond = function()
              return require('noice').api.statusline.mode.has()
            end,
            color = { fg = '#ff9e64' },
          },
          'encoding',
          'fileformat',
          'filetype',
        },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {},
    }
  end,
}
