local colorscheme = "vscode"

local vim_cmd_status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not vim_cmd_status_ok then
  return
end

local vscode_status_ok, vscode_theme = pcall(require, "vscode")
if not vscode_status_ok then
  return
end

vscode_theme.setup {
  style = "dark", -- Alternatively set style in setup
  transparent = false, -- Enable transparent background
  italic_comments = true, -- Enable italic comment
  disable_nvimtree_bg = false, -- Disable nvim-tree background color
}
vscode_theme.load()
