return {{
  "nvim-lualine/lualine.nvim",
  opts = {function()
        require(".plugins.configs.lualine-config")
      end,}
}
}
