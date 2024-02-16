local dap = require("dap")

-- dotnet

dap.adapters.coreclr = {
  type = "executable",
  command = "netcoredbg",
  args = { "--interpreter=vscode" }
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
      return vim.fn.input("Path to dll: ", vim.fn.getcwd(), "file")
    end,
  },
}

-- DapUI

local dapui = require("dapui")

dapui.setup()

-- Open and close windows automatically on certain events from DAP
dap.listeners.before.attach.dapui_config = function()
  dapui.open()
end
dap.listeners.before.launch.dapui_config = function()
  dapui.open()
end
dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
end
dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
end

-- Keymaps
vim.keymap.set("n", "<F5>", ":lua require('dap').continue()<CR>")
vim.keymap.set("n", "<F10>", ":lua require('dap').step_over()<CR>")
vim.keymap.set("n", "<F11>", ":lua require('dap').step_into()<CR>")
vim.keymap.set("n", "<F12>", ":lua require('dap').step_out()<CR>")
vim.keymap.set("n", "<Leader>db", ":lua require('dap').toggle_breakpoint()<CR>")
vim.keymap.set("n", "<Leader>dB", ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
-- vim.keymap.set("n", "<Leader>lp", ":lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
-- vim.keymap.set("n", "<Leader>dr", ":lua require('dap').repl.open()<CR>")
-- vim.keymap.set("n", "<Leader>dl", ":lua require('dap').run_last()<CR>")
