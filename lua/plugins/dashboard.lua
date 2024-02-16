local function default_header()
  return {
    "",
    "",
    "",

    "   )  (",
    "     (   ) )",
    "      ) ( (",
    " mrf_______)_",
    " .-'---------|",
    "( C|/\\/\\/\\/\\/|",
    " '-./\\/\\/\\/\\/|",
    "   '_________'",
    "    '-------'",

    "",
    "",
    "",
  }
end
require("dashboard").setup {
  theme = "doom",
  config = {
    header = default_header(),
    center = {
      {
        icon = "󰙅 ",
        icon_hl = "Title",
        desc = "Open tree",
        desc_hl = "String",
        key = "o",
        key_hl = "Number",
        action = ":Neotree float",
      },

      {
        icon = " ",
        icon_hl = "Title",
        desc = "New file",
        desc_hl = "String",
        key = "n",
        key_hl = "Number",
        action = ":ene",
      },

      {
        icon = " ",
        icon_hl = "Title",
        desc = "Lazy",
        desc_hl = "String",
        key = "l",
        key_hl = "Number",
        action = ":Lazy",
      },

      {
        icon = "⏻ ",
        icon_hl = "Title",
        desc = "Quit Neovim",
        desc_hl = "String",
        key = "q",
        key_hl = "Number",
        action = ":q",
      },
    },
  },
}
