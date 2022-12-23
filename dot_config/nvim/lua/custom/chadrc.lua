local M = {}

local pluginConfs = require "custom.plugins.configs"

M.plugins = {
  override = {
    ["nvim-treesitter/nvim-treesitter"] = pluginConfs.treesitter,
    ["williamboman/mason.nvim"] = pluginConfs.mason,
  },

  user = require "custom.plugins",
}

M.ui = {
  theme = "gruvchad",
}

M.mappings = require "custom.mappings"

return M
