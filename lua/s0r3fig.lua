local function open_nvim_tree()
  -- open the tree
  require("nvim-tree.api").tree.open()
end
vim.keymap.set("", "<up>", "<nop>", { noremap = true })
vim.keymap.set("", "<down>", "<nop>", { noremap = true })
vim.keymap.set("i", "<up>", "<nop>", { noremap = true })
vim.keymap.set("i", "<down>", "<nop>", { noremap = true })
vim.opt.mousescroll = "ver:0,hor:0" 
vim.opt.mouse = ""


require("s0r3fig.lua.vim-options")
require("s0r3fig.lua.plugins")
--vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
require'lspconfig'.pyright.setup{}
