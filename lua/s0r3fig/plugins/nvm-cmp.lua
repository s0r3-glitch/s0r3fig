return{
    	{
    		"hrsh7th/nvim-cmp",
    		event = "InsertEnter",

		-- cmp sources plugins
      		dependencies = {
                            {
                                -- snippet plugin
                                "L3MON4D3/LuaSnip",
                                dependencies = "rafamadriz/friendly-snippets",
                                opts = { history = true, updateevents = "TextChanged,TextChangedI" },
                                config = function(_, opts)
                                    require("s0r3fig.plugins.configs.luansnip").luasnip(opts)
                                    end,
                            },

                                -- autopairing of (){}[] etc
                            {
                                "windwp/nvim-autopairs",
                                opts = {
                                    fast_wrap = {},
                                    disable_filetype = { "TelescopePrompt", "vim" },
                            },
                                config = function(_, opts)
                                    require("nvim-autopairs").setup(opts)

                                    -- setup cmp for autopairs
                                    local cmp_autopairs = require "nvim-autopairs.completion.cmp"
                                    require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
                                end,
                                },
        		                "saadparwaiz1/cmp_luasnip",
        		                "hrsh7th/cmp-nvim-lua",
        		                "hrsh7th/cmp-nvim-lsp",
        		                "hrsh7th/cmp-buffer",
        		                "hrsh7th/cmp-path",
      		            },


        opts = function()
            return require "s0r3fig.plugins.configs.cmp"
            end,
        
        config = function(_, opts)
            require("cmp").setup(opts)
            end,

    },
    --- Uncomment these if you want to manage LSP servers from neovim
-- {'williamboman/mason.nvim'},
-- {'williamboman/mason-lspconfig.nvim'},

    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig',
    config = function()
        require('dap.ext.vscode').load_launchjs()
        end
    },
    {'hrsh7th/cmp-nvim-lsp'},
}
