return{
        {
            {
                "williamboman/mason.nvim",
                config = function()
                        require("mason").setup()
                    end
            },

            {
                "williamboman/mason-lspconfig.nvim",
                config = function()
                    require("mason-lspconfig").setup{
                    ensure_installed = {"lua_ls","rust_analyzer","jdtls","biome","pyright","lemminx","hydra_lsp","html","dockerls","docker_compose_language_service","diagnosticls","cssls","clangd","omnisharp_mono","bashls","marksman","powershell_es","taplo","angularls","asm_lsp","cmake","puppet"}
                }
                end
            }
    }
}
