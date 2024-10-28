-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim
-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        width = 25,
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
  event_handlers = {
    {
      event = 'neo_tree_buffer_enter',
      handler = function()
        vim.opt_local.relativenumber = true -- Enable relative line numbers
        vim.opt_local.number = true -- Enable absolute line numbers
      end,
    },
    {
      event = 'neo_tree_buffer_leave',
      handler = function()
        vim.opt_local.relativenumber = false -- Disable relative line numbers
        vim.opt_local.number = false -- Optionally disable absolute line numbers
      end,
    },
  },
}
