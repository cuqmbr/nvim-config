require("colortils").setup {
  -- Register in which color codes will be copied
  register = "+",
  -- Preview for colors, if it contains `%s` this will be replaced with a hex color code of the color
  color_preview = "█ %s",
  -- The default in which colors should be saved
  -- This can be hex, hsl or rgb
  default_format = "hex",
  -- Border for the float
  border = "rounded",
  -- Some mappings which are used inside the tools
  mappings = {
    -- increment values
    increment = "l",
    -- decrement values
    decrement = "h",
    -- increment values with bigger steps
    increment_big = "L",
    -- decrement values with bigger steps
    decrement_big = "H",
    -- set values to the minimum
    min_value = "0",
    -- set values to the maximum
    max_value = "$",
    -- save the current color in the register specified above with the format specified above
    set_register_default_format = "<cr>",
    -- save the current color in the register specified above with a format you can choose
    set_register_cjoose_format = "g<cr>",
    -- replace the color under the cursor with the current color in the format specified above
    replace_default_format = "<m-cr>",
    -- replace the color under the cursor with the current color in a format you can choose
    replace_choose_format = "g<m-cr>",
    -- export the current color to a different tool
    export = "E",
    -- set the value to a certain number (done by just entering numbers)
    set_value = "c",
    -- toggle transparency
    transparency = "T",
    -- choose the background (for transparent colors)
    choose_background = "B",
  }
}

--[[

You can use the different tools with commands. Those take the format Colortils <tool> <color>. The color can be any of the supported formats. Notice that symbols like #, % and space need to be escaped like e.g. this \#FF00AB.

If no valid color is provided as argument the color under the cursor (if available) will be used. If there isn't any found the user will be asked for input (notice that you don't need to escape characters there).

:Colortils picker <color>
:Colortils lighten <color>
:Colortils darken <color>
:Colortils greyscale <color>
:Colortils gradient <color1> <color2>
:Colortils css list

--]]
