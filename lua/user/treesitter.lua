local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup {
  modules = { "" },
  auto_install = false,
  ensure_installed = { "" }, -- put the language you want in this array
  ignore_install = { "" }, -- List of parsers to ignore installing
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  highlight = {
    enable = true, -- false will disable the whole extension
    --disable = { "css" }, -- list of language that will be disabled
  },
  autopairs = {
    enable = true,
  },
  indent = {
    enable = true,
    disable = { "python", "css" }
  },
  -- context_commentstring = {
  --   enable = true,
  --   enable_autocmd = false,
  -- }
}
