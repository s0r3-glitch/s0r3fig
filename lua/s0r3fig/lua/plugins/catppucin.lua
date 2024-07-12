return{	
	{ 
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
       config = function()
            require("configs.catppuccin-config")
            vim.cmd.colorscheme "catppuccin-macchiato"
        end

	}
}
