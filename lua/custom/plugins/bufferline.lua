-- In your plugins configuration file (e.g., lua/plugins/bufferline.lua or directly in your main plugins table)

return {
  'akinsho/bufferline.nvim',
  version = '*', -- or a specific tag e.g. "v3.x"
  dependencies = {
    'nvim-tree/nvim-web-devicons', -- Optional, for icons
  },
  opts = {
    options = {
      mode = 'buffers', -- "buffers" or "tabs"
      -- separator_style = "slant", -- or "padded_slant", "slope", "padded_slope", "thick", "thin" | "padded_thin"
      -- diagnostics = "nvim_lsp", -- false | "nvim_lsp" | "coc"
      -- diagnostics_indicator = function(count, level, diagnostics_dict, context)
      --   return "("..count..")"
      -- end,
      -- show_buffer_icons = true, -- Disable if you don't want icons
      -- show_buffer_close_icons = true,
      -- show_close_icon = '',
      -- show_tab_indicators = true,
      -- persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
      -- Enforce all buffers show on screen, even if there are too many to fit in the window
      -- enforce_regular_tabs = false,
      -- always_show_bufferline = true, -- Set to false to only show when multiple buffers
      offsets = {
        {
          filetype = 'NvimTree',
          text = 'File Explorer',
          text_align = 'left',
          -- separator = true, -- Uncomment for a separator
        },
      },
      -- Add more options here as needed
    },
  },
  config = function(_, opts)
    require('bufferline').setup(opts)
  end,
  -- You can also set keymaps here if you prefer
  -- keys = {
  --   { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
  --   { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
  --   { "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", desc = "Delete other buffers" },
  --   { "<leader>br", "<Cmd>BufferLineCloseRight<CR>", desc = "Delete buffers to the right" },
  --   { "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", desc = "Delete buffers to the left" },
  --   { "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
  --   { "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
  -- },
}
