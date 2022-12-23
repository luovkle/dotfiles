return {
  ["Vimjas/vim-python-pep8-indent"] = {
  },

  ["windwp/nvim-ts-autotag"] = {
    ft = { "html", "javascriptreact" },
    after = "nvim-treesitter",
    config = function()
      require("custom.plugins.autotag").autotag()
    end,
  },

  ["kylechui/nvim-surround"] = {
    config = function()
      require("nvim-surround").setup({
      })
    end
  },

  ["NTBBloodbath/rest.nvim"] = {},

  ["CRAG666/code_runner.nvim"] = {
    config = function()
      require('code_runner').setup({
        startinsert = true,
        float = {
          border = "single",
        },
        filetype = {
          python = "python -i",
          javascript = "node",
          typescript = "deno run",
          go = "go run"
        },
      })
    end,
  },

  ["danymat/neogen"] = {
    config = function()
      require('neogen').setup {
        languages = {
          python = {
            template = {
              annotation_convention = "google_docstrings",
            },
          },
        }
      }
    end,
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
}
