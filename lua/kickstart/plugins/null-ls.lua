return {
  'jose-elias-alvarez/null-ls.nvim',
  config = function()
    local null_ls = require 'null-ls'

    null_ls.setup {
      sources = {
        -- Prettier for various web development file types
        null_ls.builtins.formatting.prettier.with {
          filetypes = { 'javascript', 'typescript', 'css', 'scss', 'html', 'json', 'markdown', 'yaml' },
        },

        -- ESLint for diagnostics and code actions
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.code_actions.eslint,
      },
    }
  end,
}
