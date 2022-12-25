local M = {}

M.treesitter = {
  ensure_installed = {
    "bash",
    "css",
    "comment",
    "dockerfile",
    "dot",
    "elixir",
    "fish",
    "go",
    "gomod",
    "html",
    "http",
    "javascript",
    "json",
    "kotlin",
    "lua",
    "ninja",
    "python",
    "rust",
    "scss",
    "sql",
    "toml",
    "tsx",
    "typescript",
    "vim",
    "yaml",
  },
  indent = {
    enable = false
  }
}

M.mason = {
  ensure_installed = {
    -- python
    "pyright",
    "black",

    -- javascript
    "typescript-language-server",
    "prettier",

    -- deno
    "deno",

    -- go
    "gopls",
    "gofumpt",

    -- rust
    "rust_analyzer",

    -- docker
    "dockerfile-language-server",

    -- json
    "jsonls",

    -- toml
    "taplo",

    -- css
    "css-lsp",
    "tailwindcss",

    -- lua
    "lua-language-server",
    "stylua",
  },
}

return M
