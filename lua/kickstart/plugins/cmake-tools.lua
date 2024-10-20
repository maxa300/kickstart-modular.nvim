-- lua/plugins/cmake-tools.lua
return {
  'Civitasv/cmake-tools.nvim',
  config = function()
    require('cmake-tools').setup {
      cmake_command = 'cmake', -- CMake command
      cmake_build_directory = 'build', -- Build directory
      cmake_build_type = 'Debug', -- Build type
      cmake_generate_options = {}, -- Additional CMake options
      cmake_build_options = {}, -- Additional build options
      cmake_console_size = 10, -- Console height
      cmake_show_console = 'always', -- When to show console
      cmake_dap_configuration = { -- DAP configuration for debugging
        name = 'cpp',
        type = 'cppdbg',
        request = 'launch',
        stopAtEntry = false,
        runInTerminal = true,
      },
      cmake_dap_open_command = require('dap').repl.open, -- Command to open DAP REPL
    }
  end,
}
