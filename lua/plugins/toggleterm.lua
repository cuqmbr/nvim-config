require("toggleterm").setup({ open_mapping = [[<c-\>]] })

function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  -- Switching between terminal and normal mode inside terminal window
  vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
  vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
  vim.keymap.set("t", "kj", [[<C-\><C-n>]], opts)
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
