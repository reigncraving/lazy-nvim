-- include hbs, rbs limited support
vim.cmd("autocmd BufRead,BufNewFile *.hbs set filetype=html")
vim.cmd("autocmd BufRead,BufNewFile *.rbs set filetype=html")

--Dockerfiles
vim.cmd("autocmd BufRead,BufNewFile Dokerfile*.* set filetype=dockerfile")

--autosave format
vim.cmd("autocmd BufRead,BufNewFile set autoformat=false")
