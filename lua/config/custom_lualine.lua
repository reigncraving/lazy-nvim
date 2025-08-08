local custom_horizon = require("lualine.themes.horizon")
-- local pink = "#ff5ea0"
-- local cyan = "#5ef1ff"
local bg = "#25262e"
local light_bg = "#353742"
local accent = "#878aa8"
-- local cmd = "#f75169"
local cmd = "#cfe0fc"
local insert = "#9a7dfa"
local visual = "#ffb34f"
-- Change the background of lualine_c section for normal mode
custom_horizon.normal.c.bg = bg
custom_horizon.normal.a.bg = light_bg
custom_horizon.normal.a.fg = accent
custom_horizon.insert.c.bg = bg
custom_horizon.insert.a.bg = light_bg
custom_horizon.insert.a.fg = insert
custom_horizon.visual.c.bg = bg
custom_horizon.visual.a.fg = visual
custom_horizon.visual.a.bg = light_bg
custom_horizon.replace.c.bg = bg
custom_horizon.command.c.bg = bg
custom_horizon.command.a.bg = cmd

require("lualine").setup({
  options = { theme = custom_horizon },
})
