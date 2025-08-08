-- local cmp = require("cmp")
--
-- cmp.setup({
--   window = {
--     completion = cmp.config.window.bordered(),
--     documentation = cmp.config.window.bordered(),
--   },
-- })

-- Diagnostics
-- vim.cmd("hi DiagnosticsInfo guifg=#c1f1f7")
--
-- -- Diagnostics
-- vim.diagnostic.config({
--   virtual_text = false,
--   signs = true,
--   underline = true,
--   float = {
--     style = "minimal",
--     border = "rounded",
--   },
-- })
--
-- Setup Handlers for LSP servers:
-- require("ruby-lsp").setup()

-- include hbs, rbs limited support
vim.cmd("autocmd BufRead,BufNewFile *.hbs set filetype=html")
vim.cmd("autocmd BufRead,BufNewFile *.rbs set filetype=html")

--Dockerfiles
-- vim.cmd("autocmd BufRead,BufNewFile Dokerfile*.* set filetype=dockerfile")

--autosave format
vim.cmd("autocmd BufRead,BufNewFile set autoformat=false")
