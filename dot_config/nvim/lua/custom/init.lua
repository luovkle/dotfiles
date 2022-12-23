local opt = vim.opt
local cmd = vim.api.nvim_command

opt.relativenumber = true

cmd("inoremap <C-c> <Esc>")
cmd("autocmd FileType go set tabstop=8|set shiftwidth=8|set expandtab")
