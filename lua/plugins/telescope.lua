return {
	{
		"nvim-telescope/telescope.nvim",
		opts = {
			defaults = {
				layout_strategy = "horizontal",
        file_ignore_patterns = { "^%.git/", "^node_modules/", "node_modules" },
				layout_config = {
					prompt_position = "top",
				},
				sorting_strategy = "ascending",
				winblend = 0,
			},
      pickers = {
        find_files = {
          hidden = true
        },
      },
		},
	},
}
