-- -- Diagnostics
vim.cmd("hi DiagnosticVirtualTextWarn guifg=#a38e72")
vim.cmd("hi DiagnosticVirtualTextInfo guifg=#8e9191")
vim.cmd("hi DiagnosticVirtualTextHint guifg=#999acc")

-- Numbers:
-- local num_color = "#4d4d4d"
local num_accent = "#cfe0fc"
-- local num_accent = "#969696"
--
-- vim.api.nvim_set_hl(0, "LineNrAbove", { fg = num_color, bold = true })
vim.api.nvim_set_hl(0, "LineNr", { fg = num_accent, bold = true })
-- vim.api.nvim_set_hl(0, "LineNrBelow", { fg = num_color, bold = true })

-- Undotree presistent
-- to cleacn the directory::
-- set undolevels=-1
vim.cmd("set undodir=~/.vim/undodir")
vim.cmd("set undofile")
vim.cmd("set undolevels=1000")

--set the line space between lines:
vim.cmd("set linespace=4")

--set conceal level to prevent symbols being hiden
vim.cmd("set conceallevel=0")

-- fzf
vim.cmd("set rtp+=/home/linuxbrew/.linuxbrew/opt/fzf")
