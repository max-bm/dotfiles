local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({buffer = bufnr})
end)

require("mason").setup()
require("mason-lspconfig").setup {
	ensure_installed = {'bashls', 'dockerls', 'jedi_language_server', 'jsonls', 'lua_ls', 'pylsp', 'terraformls', 'yamlls'},
}

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
