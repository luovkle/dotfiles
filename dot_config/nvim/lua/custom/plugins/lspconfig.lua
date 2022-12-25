local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local servers = {
  "pyright",
  "tsserver",
  "denols",
  "gopls",
  "rust_analyzer",
  "dockerls",
  "jsonls",
  "taplo",
}

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})

  lspconfig.denols.setup {
    on_attach = on_attach,
    root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
  }

  lspconfig.tsserver.setup {
    on_attach = on_attach,
    root_dir = lspconfig.util.root_pattern("package.json"),
  }
end
