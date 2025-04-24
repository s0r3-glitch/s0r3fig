return{	
	{ 
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
       opts = {function()
            require("plugins.configs.catppuccin-config")
			vim.cmd.colorscheme "catppuccin-macchiato"

        end}

	},
	{
		"LazyVim/LazyVim",
		opts = {
		  colorscheme = "catppuccin",
		},
	}
}
