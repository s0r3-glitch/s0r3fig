local function open_nvim_tree()
  -- open the tree
  require("nvim-tree.api").tree.open()
end
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.keymap.set("", "<up>", "<nop>", { noremap = true })
vim.keymap.set("", "<down>", "<nop>", { noremap = true })
vim.keymap.set("i", "<up>", "<nop>", { noremap = true })
vim.keymap.set("i", "<down>", "<nop>", { noremap = true })
vim.opt.mousescroll = "ver:0,hor:0" 
vim.opt.mouse = ""

vim.opt.rtp:prepend(lazypath)
require("vim-options")
require("lazy").setup("plugins")
--vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
require'lspconfig'.pyright.setup{}
