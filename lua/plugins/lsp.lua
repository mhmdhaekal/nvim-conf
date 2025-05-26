return {
    'neovim/nvim-lspconfig',
    dependencies = {
        { 'williamboman/mason.nvim', config = true },
        'saghen/blink.cmp',
    },
    config = function()
        require('mason').setup()

        local servers = {
            gopls = {},
            rust_analyzer = {},
            ts_ls = {
                init_options = {
                    preferences = {
                        disableSuggestions = true,
                    },
                    plugins = {
                        {
                            name = '@vue/typescript-plugin',
                            location = "~/lsp/node_modules/@vue/typescript-plugin",
                            languages = {"javascript", "typescript", "vue"},
                        },
                    },
                },
                filetypes = {
                    'typescript',
                    'javascript',
                    'vue',
                },
            },
            lua_ls = {
                settings = {
                    Lua = {
                        completion = {
                            callSnippet = 'Replace',
                        },
                    },
                },
            },
            eslint = {},
            tailwindcss = {},
            astro = {},
            templ = {},
            zls = {},
            sqls = {},
            clangd = {},
        }

        for server, config in pairs(servers) do
            vim.lsp.enable(server)
            vim.lsp.config(server, config)
        end
    end,
}
