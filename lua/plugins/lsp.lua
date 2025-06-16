return {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    lazy = false,
    dependencies = {
        -- LSP Support
        { "neovim/nvim-lspconfig" },
        { "williamboman/mason.nvim" },
        { "williamboman/mason-lspconfig.nvim" },

        -- Autocompletion
        { "hrsh7th/nvim-cmp" },
        { "hrsh7th/cmp-nvim-lsp" },
        { "L3MON4D3/LuaSnip" },
    },
    config = function()
        local lsp = require("lsp-zero")

        lsp.on_attach(function(_, bufnr)
            lsp.default_keymaps({ buffer = bufnr })
        end)

        lsp.setup()

        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "pyright", "bashls", "gopls" },
            handlers = {
                lsp.default_setup,
                pyright = function()
                    lsp.configure("pyright", {
                        settings = {
                            python = {
                                pythonPath = "/home/ryan/venvs/qemy/bin/python",
                                analysis = {
                                    autoSearchPaths = true,
                                    useLibraryCodeForTypes = true,
                                    diagnosticMode = "workspace",
                                    typeCheckingMode = "basic",
                                    extraPaths = { "/home/ryan/venvs/qemy/lib/python3.12/site-packages" },
                                },
                            }
                        }
                    })
                end,
                lua_ls = function()
                    lsp.configure("lua_ls", {
                        settings = {
                            Lua = {
                                diagnostics = {
                                    globals = { "vim" },
                                },
                            },
                        },
                    })
                end,
            },
        })
        -- nvim-cmp setup for autocompletion
        local cmp = require('cmp')

        cmp.setup({
            completion = {
                autocomplete = { cmp.TriggerEvent.TextChanged, cmp.TriggerEvent.InsertEnter },
            },
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
            mapping = {
                ['<Tab>'] = cmp.mapping.select_next_item(),
                ['<S-Tab>'] = cmp.mapping.select_prev_item(),
                ['<CR>'] = cmp.mapping.confirm({
                    behavior = cmp.ConfirmBehavior.Insert,
                    select = true,
                }),
            },
            sources = {
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
            },
        })
    end,
}

