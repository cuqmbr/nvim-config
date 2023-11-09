local dap_status_ok, dap = pcall(require, "dap")
if not dap_status_ok then
  return
end

-- .NET

dap.adapters.coreclr = {
  type = 'executable',
  command = 'netcoredbg',
  args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    env = {
      ASPNETCORE_ENVIRONMENT = "Development",
      DOTNET_ENVIRONMENT = "Development"
    },
    program = function()
        return vim.fn.input('Path to dll ', vim.fn.getcwd(), 'file')
    end,
    cwd = "${workspaceFolder}/ShoppingAssistantApi.Api",
  },
}

-- Flutter on Dart

dap.adapters.dart = {
  type = "executable",
  command = "flutter",
  -- This command was introduced upstream in https://github.com/dart-lang/sdk/commit/b68ccc9a
  args = {"debug_adapter"}
}

dap.configurations.dart = {
  {
    type = "dart",
    request = "launch",
    name = "Launch Flutter Program",
    -- The nvim-dap plugin populates this variable with the filename of the current buffer
    program = "${file}",
    -- The nvim-dap plugin populates this variable with the editor's current working directory
    cwd = "${workspaceFolder}",
    -- toolArgs = {"-d", "linux"}, -- Note for Dart apps this is args, for Flutter apps toolArgs
  }
}

-- DapUI

local dapui_status_ok, dapui = pcall(require, "dapui")
if not dapui_status_ok then
  return
end

dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

-- Keymaps

vim.keymap.set("n", "<F5>", ":lua require('dap').continue()<CR>")
vim.keymap.set("n", "<F10>", ":lua require('dap').step_over()<CR>")
vim.keymap.set("n", "<F11>", ":lua require('dap').step_into()<CR>")
vim.keymap.set("n", "<F12>", ":lua require('dap').step_out()<CR>")
vim.keymap.set("n", "<Leader>db", ":lua require('dap').toggle_breakpoint()<CR>")
vim.keymap.set("n", "<Leader>dB", ":lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>")
vim.keymap.set("n", "<Leader>lp", ":lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>")
vim.keymap.set("n", "<Leader>dr", ":lua require('dap').repl.open()<CR>")
vim.keymap.set("n", "<Leader>dl", ":lua require('dap').run_last()<CR>")
