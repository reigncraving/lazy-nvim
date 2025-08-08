return {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        icons_enabled = true,
        dependencies = { "nvim-tree/nvim-web-devicons" },
        component_separators = "|",
        section_separators = "",
        -- theme = 'material-stealth'
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filetype", { "filename", path = 1 } },
        lualine_x = { { "datetime", style = " %H:%M" }, "encoding", "fileformat" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filetype", "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {},
    },
  }

