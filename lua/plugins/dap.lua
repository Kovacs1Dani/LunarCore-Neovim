return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "theHamsta/nvim-dap-virtual-text",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")

      dapui.setup()
      require("nvim-dap-virtual-text").setup()

      -- --- AESTHETICS (Signs) ---
      vim.fn.sign_define('DapBreakpoint', { text='●', texthl='DapBreakpoint', linehl='', numhl='' })
      vim.fn.sign_define('DapBreakpointCondition', { text='●', texthl='DapBreakpointCondition', linehl='', numhl='' })
      vim.fn.sign_define('DapLogPoint', { text='◆', texthl='DapLogPoint', linehl='', numhl='' })
      vim.fn.sign_define('DapStopped', { text='󰁕 ', texthl='DapStopped', linehl='Visual', numhl='' })
      vim.fn.sign_define('DapBreakpointRejected', { text=' ', texthl='DapBreakpointRejected', linehl='', numhl='' })

      -- Set colors for the signs (Oxocarbon friendly)
      vim.api.nvim_set_hl(0, 'DapBreakpoint', { fg='#ee5396' })
      vim.api.nvim_set_hl(0, 'DapBreakpointCondition', { fg='#ee5396' })
      vim.api.nvim_set_hl(0, 'DapLogPoint', { fg='#42be65' })
      vim.api.nvim_set_hl(0, 'DapStopped', { fg='#33b1ff' })

      -- --- KEYBINDINGS ---
      -- Standard debugging controls
      vim.keymap.set('n', '<F5>', function() dap.continue() end, { desc = 'Debug: Start/Continue' })
      vim.keymap.set('n', '<F10>', function() dap.step_over() end, { desc = 'Debug: Step Over' })
      vim.keymap.set('n', '<F11>', function() dap.step_into() end, { desc = 'Debug: Step Into' })
      vim.keymap.set('n', '<F12>', function() dap.step_out() end, { desc = 'Debug: Step Out' })
      vim.keymap.set('n', '<leader>b', function() dap.toggle_breakpoint() end, { desc = 'Debug: Toggle Breakpoint' })
      vim.keymap.set('n', '<leader>B', function() 
        dap.set_breakpoint(vim.fn.input('Breakpoint condition: ')) 
      end, { desc = 'Debug: Set Conditional Breakpoint' })

      -- Toggle UI manually if needed
      vim.keymap.set('n', '<leader>du', function() dapui.toggle() end, { desc = 'Debug: Toggle UI' })

      -- --- AUTOMATION ---
      dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open() end
      dap.listeners.before.event_terminated["dapui_config"] = function() dapui.close() end
      dap.listeners.before.event_exited["dapui_config"] = function() dapui.close() end

      -- --- GDB ADAPTER ---
      dap.adapters.gdb = {
        type = "executable",
        command = "gdb",
        args = { "--interpreter=dap", "--eval-command", "set print pretty on" }
      }

      dap.configurations.c = {
        {
          name = "Launch",
          type = "gdb",
          request = "launch",
          program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
          end,
          cwd = "${workspaceFolder}",
          stopAtBeginningOfMainSubprogram = false,
        },
      }
    end,
  },
}
