local opt = vim.opt

--Cursor
opt.cursorline = false -- Enable highlighting of the current line
opt.termguicolors = true -- True color: support
opt.pumblend = 10 -- Pop up blend
opt.winblend = 0

-- numbers
opt.number = true
opt.relativenumber = true

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- turn off swapfile
opt.swapfile = false

-- folding
-- zR => open all folds
-- zM => close all open folds
-- za => toggle fold at the cursor
-- vim.opt.fillchars = { fold = " " }
-- opt.foldmethod = "expr"
opt.foldmethod = "indent"
opt.foldenable = false
-- opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
-- opt.foldcolumn = "0"
-- opt.foldtext = ""
opt.foldlevel = 99
-- opt.foldlevelstart = 4
-- opt.foldnestmax = 4

-- blink
-- vim.o.guicursor = table.concat({
--   "n-v-c:block-Cursor/lCursor-blinkwait1000-blinkon100-blinkoff100",
--   "i-ci:ver25-Cursor/lCursor-blinkwait1000-blinkon100-blinkoff100",
--   "r:hor50-Cursor/lCursor-blinkwait100-blinkon100-blinkoff100"
-- }, ",")

-- penv
-- vim.g.python3_host_prog = '/home/teodor-raychev/.pyenv/shims/python'
-- -- vim.lsp.set_log_level("debug")

-- Enable Neovim Spellchecking
-- z= opens suggestions.
-- zg => tells the spellchecking this is a good word.
opt.spelllang = "en_us"
opt.spell = false
