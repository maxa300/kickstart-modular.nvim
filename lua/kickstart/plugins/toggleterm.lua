return {
  -- Other plugins ...
  {
    'akinsho/toggleterm.nvim',
    version = '*', -- Use latest tagged version
    config = function()
      require('toggleterm').setup {
        -- Configuration options for toggleterm
        size = 20,
        open_mapping = [[<c-`>]], -- Toggle terminal with Ctrl+\
        hide_numbers = true, -- Don't show line numbers in terminal
        shade_terminals = true,
        shading_factor = 2, -- Dim the background
        start_in_insert = true, -- Start in insert mode
        persist_size = true,
        direction = 'horizontal', -- Default to horizontal split
        close_on_exit = true, -- Close terminal when process exits
        shell = vim.o.shell, -- Use Neovim's default shell
        float_opts = {
          border = 'curved', -- Border style for floating terminal
          winblend = 3,
        },
      }
    end,
  },
}
