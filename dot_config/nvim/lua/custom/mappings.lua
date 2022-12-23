local M = {}

M.user = {
  n = {
    ["<A-q>"] = {"<cmd> q! <CR>", "   exit neovim"},
    ["<A-x>"] = {"<cmd> nohlsearch <CR>/<Del>", "   clear search"},
    ["<leader>j"] = {"10j", "   move cursor down 10 positions"},
    ["<leader>k"] = {"10k", "   move cursor up 10 positions"},
  }
}

M.rest = {
  n = {
    ["<leader>rs"] = {"<Plug>RestNvim", "exit neovim"},
  }
}

M.code_runner = {
  n = {
    ["<leader>rr"] = {"<cmd> RunFile float<CR>", "   run code"},
  }
}

M.neogen = {
  n = {
    ["<leader>ds"] = {"<cmd> Neogen <CR>", "   generate annotation"}
  }
}

return M
