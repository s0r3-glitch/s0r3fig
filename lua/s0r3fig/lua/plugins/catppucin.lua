return{	
	{ 
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
       config = function()
            require("s0r3fig.lua.plugins.configs.catppuccin-config")
            vim.cmd.colorscheme "catppuccin-macchiato"
        end

	}
}
