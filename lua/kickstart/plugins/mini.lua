return {
  {
    'echasnovski/mini.nvim',
    config = function()
      -- Setup modules
      require('mini.ai').setup { n_lines = 500 }
      require('mini.surround').setup()

      -- Function to toggle formatting based on comment markers
      local function is_formatting_disabled(line)
        return line:match '// format: off' or line:match '// format: on'
      end

      -- Wrap around the formatter to check for markers
      vim.api.nvim_create_autocmd('BufWritePre', {
        callback = function()
          local bufnr = vim.api.nvim_get_current_buf()
          local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)

          local format_on = true
          for i, line in ipairs(lines) do
            if is_formatting_disabled(line) then
              format_on = not format_on
            end

            if format_on then
              -- Run mini.nvim formatting
              -- Add your formatting code here that respects the `format_on` flag
            end
          end
        end,
      })

      -- Other mini.nvim setups...
    end,
  },
}
