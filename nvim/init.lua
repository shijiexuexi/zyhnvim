require('basic')
require('keybingings')
require('lazy-nvim')
vim.cmd.colorscheme("base16-tender")
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
require("mason-lspconfig").setup()
--require("lsp.setup")
require("plugin-config.bufferlines")
require("plugin-config.lualine")
require("plugin-config.dashboard")
require("plugin-config.project")
require("plugin-config.treesitter")
require("lsp.setup")
require("plugin-config.cmp")
require("lsp.ui")
require("plugin-config.indent-blankline")
require("plugin-config.lspkind")
require("plugin-config.autosave")
require("plugin-config.autopairs")
--require("plugin-config.nvim-cmake")
require("plugin-config.toggleterm")
require("plugin-config.null-ls")
require("plugin-config.nvim-tree")
