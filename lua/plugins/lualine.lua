require("lualine").setup {
  options = {
    icons_enabled = true,
    theme = "auto",
    component_separators = { left = "", right = "|" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = {
      statusline = { "neo-tree" },
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },

  --[[
  Lualine has sections as shown below
  +-------------------------------------------------+
  | A | B | C                             X | Y | Z |
  +-------------------------------------------------+
  --]]

  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff" },
    lualine_c = {
      { "filename", path = 1 },
      {
        "diagnostics",
        sources = { "nvim_diagnostic", "nvim_lsp" },
        sections = { "error", "warn", "info", "hint" },
        diagnostics_color = {
          error = "DiagnosticError",
          warn = "DiagnosticWarn",
          info = "DiagnosticInfo",
          hint = "DiagnosticHint",
        },
        symbols = { error = "󰅙 ", warn = " ", info = "", hint = " " },
        colored = true,
        update_in_insert = true,
        always_visible = false,
      }
    },
    lualine_x = { "filetype", "encoding", "fileformat", "filesize" },
    lualine_y = { "progress" },
    lualine_z = { "location" }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { { "filename", path = 3 } },
    lualine_x = { "filetype", "encoding", "fileformat", "filesize" },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

--[[
Available components
 - branch (git branch)
 - buffers (shows currently available buffers)
 - diagnostics (diagnostics count from your preferred source)
 - diff (git diff status)
 - encoding (file encoding)
 - fileformat (file format)
 - filename
 - filesize
 - filetype
 - hostname
 - location (location in file in line:column format)
 - mode (vim mode)
 - progress (%progress in file)
 - searchcount (number of search matches when hlsearch is active)
 - selectioncount (number of selected characters or lines)
 - tabs (shows currently available tabs)
 - windows (shows currently available windows)
--]]
