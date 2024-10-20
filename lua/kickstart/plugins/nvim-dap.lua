-- lua/plugins/nvim-dap.lua
return {
  'mfussenegger/nvim-dap',
  config = function()
    local dap = require 'dap'
    -- Here, you can set up DAP configurations for C++
    dap.adapters.cppdbg = {
      type = 'executable',
      command = '/path/to/vscode-cpptools/extension/debugAdapters/bin/OpenDebugAD7',
    }

    dap.configurations.cpp = {
      {
        name = 'Launch file',
        type = 'cppdbg',
        request = 'launch',
        program = function()
          return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopAtEntry = true,
        setupCommands = {
          {
            text = '-enable-pretty-printing',
            description = 'enable pretty printing',
            ignoreFailures = false,
          },
        },
      },
    }
  end,
}
