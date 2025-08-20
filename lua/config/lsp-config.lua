-- include hbs, rbs limited support
vim.cmd("autocmd BufRead,BufNewFile *.hbs set filetype=html")
vim.cmd("autocmd BufRead,BufNewFile *.rbs set filetype=html")

--Dockerfiles
vim.cmd("autocmd BufRead,BufNewFile Dokerfile*.* set filetype=dockerfile")

--autosave format
vim.cmd("autocmd BufRead,BufNewFile set autoformat=false")

--disable pyright
-- Set to "ruff_lsp" to use the old LSP implementation version.
vim.g.lazyvim_python_ruff = "ruff"
