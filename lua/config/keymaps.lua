local keymap = vim.keymap
-- local opts = { noremap = true, silent = true }
local telescope = require("telescope.builtin")

-- replace double qoutes with single quotes:
-- s/"/'/g

-- Toggle Spelling
local function vim_opt_toggle(opt, on, off, name)
  local message = name
  if vim.opt[opt]:get() == off then
    vim.opt[opt] = on
    message = message .. " Enabled"
  else
    vim.opt[opt] = off
    message = message .. " Disabled"
  end
  vim.notify(message)
end

vim.keymap.set("n", "<leader>ss", function()
  vim_opt_toggle("spell", true, false, "Spelling")
end)
vim.keymap.set("n", "<leader>ss", function()
  vim_opt_toggle("spell", true, false, "Spelling")
end)

-- git
-- diffget <branch>
keymap.set("n", "<leader>gd", [[:Gvdiffsplit!<CR>]])
keymap.set("n", "<leader>gdd", [[:Gvdiffsplit<CR>]])
keymap.set("n", "<leader>dg", [[:diffget ]])
-- this currently available via <leader>ghr
-- keymap.set("n", "<leader>gh", [[:Gitsigns reset_hunk<CR>]])

-- get File history for current git branch:
keymap.set("n", "<leader>ghf", function()
  vim.cmd("DiffviewOpen")
end, { desc = "[G]it [H]istory of [F]iles for current branch" })
keymap.set("n", "<leader>ghF", function()
  vim.cmd("DiffviewFileHistory")
end, { desc = "[G]it [H]istory of [F]iles Full history" })
keymap.set("n", "<leader>ghfc", function()
  vim.cmd("DiffviewClose")
end, { desc = "[Git] [H]istory [F]iles [C]lose" })

-- lsp
keymap.set("n", "K", vim.lsp.buf.hover, {})
keymap.set("n", "gd", vim.lsp.buf.definition, {})
keymap.set("n", "gr", vim.lsp.buf.references, {})
keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})

-- Telescope::
keymap.set("n", "<leader>?", telescope.oldfiles, { desc = "[?] Find recently opened files" })
keymap.set("n", "<leader><space>", telescope.buffers, { desc = "[ ] Find existing buffers" })
keymap.set("n", "<leader>gf", telescope.git_files, { desc = "Search [G]it [F]iles" })
keymap.set("n", "<leader>sf", telescope.find_files, { desc = "[S]earch [F]iles" })
keymap.set("n", "<leader>sh", telescope.help_tags, { desc = "[S]earch [H]elp" })
keymap.set("n", "<leader>sw", telescope.grep_string, { desc = "[S]earch current [W]ord" })
keymap.set("n", "<leader>sg", telescope.live_grep, { desc = "[S]earch by [G]rep" })
keymap.set("n", "<leader>sd", telescope.diagnostics, { desc = "[S]earch [D]iagnostics" })

keymap.set("n", "<leader>/", function()
  -- You can pass additional configuration to Telescope to change the theme, layout, etc.
  telescope.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
    winblend = 10,
    previewer = false,
  }))
end, { desc = "[/] Fuzzily search in current buffer" })

-- Test
-- keymap.set("n", "<leader>mt", ":lua require('neotest').run.run()<CR>", { desc = "[M]ake Neo[T]est run under cursor"})
-- keymap.set("n", "<leader>mo", ":lua require('neotest').output.open()<CR>", { desc = "NeoTest [O]utput"})
-- keymap.set("n", "<leader>mc", ":lua require('neotest').run.stop()<CR>", { desc = "[M]ale NeoTest [C]ancel the run" })
-- keymap.set("n", "<leader>mf", ":lua require('neotest').run.run(vim.fn.expand('%'))<CR>", { desc = "[M]ake NeoTest for the [F]ile"})
-- keymap.set("n", "<leader>ms", ":lua require('neotest').summary.toggle()<CR>", { desc = "Toggle NeoTest [S]ummary"})
--

-- tabs
-- keymap.set("n", "te", "tabedit", opts)

-- Close current buffer
keymap.set("n", "<A-w>", [[:bd<Enter>]])
keymap.set("n", "<leader>bd", [[:bufdo bd<CR>]])

-- Increment/decrement Integer num
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete word backwards
keymap.set("n", "dw", 'vb"_d')

-- move selection one tab by direction
keymap.set("v", "<", "<gv")
keymap.set("v", "<", "<gv")

-- Move lines up and down while in visual mode.
-- keymap.set("v", "<down>", ":m '>+1<CR>gv=gv")
-- keymap.set("v", "<up>", ":m '<-2<CR>gv=gv")

-- Keep cursor as move.
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep cursor in middle on search.
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Keep cursor centered as move up and down.
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- move outside surrounding brackets/quotes:
keymap.set("n", "<C><S>", "<C-c><S-a>")

-- Yank / Paste
-- keep the paste buffer.
keymap.set("x", "<leader>p", '"_d]P')

-- yanks to system clipboard.
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])
-- keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
keymap.set("n", "<leader>f", vim.lsp.buf.format)
-- Do not yank with x
-- keymap.set("n", "x", '"_x')

-- search file and replace:
keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Selections
-- Select All
keymap.set("n", "<C-a>", "gg<S-v>G")
-- highlight and copy word
keymap.set("n", "<leader>h", "viw<leader>")
-- highlight and copy whole block
keymap.set("n", "<leader>H", "viw<leader>y")
-- keymap.set("n", "viw", "C-w")
-- Go To
keymap.set({ "n", "v" }, "<leader>n", "g_")

-- Toggle NeoTree
-- keymap.set("n", "<leader>e", "<Cmd>Neotree toggle<CR>")
