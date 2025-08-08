-- Set leader key
vim.g.maplocalleader = " "
vim.g.mapleader = " "

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.keymaps")
require("config.options")
require("config.autocmds")
require("config.custom_lualine")
require("config.custom_git")
require("config.lsp-config")
