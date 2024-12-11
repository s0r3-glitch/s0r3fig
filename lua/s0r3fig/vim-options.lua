vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("nnoremap <C-0> :JABSOpen<CR>")
vim.g.mapleader = " "
-- window management
vim.cmd('nnoremap("<C-S-Right>", "<cmd>:vertical resize -1<cr>", "Minimize window")')
vim.cmd('nnoremap("<C-S-Left>", "<cmd>:vertical resize +1<cr>", "Maximize window")')
vim.cmd("nnoremap <C-H> <cmd>:wincmd h<cr>") 
vim.cmd("nnoremap <C-L> <cmd>:wincmd l<cr>") 
vim.cmd("nnoremap <C-K> <cmd>:wincmd k<cr>") 
vim.cmd("nnoremap <C-J> <cmd>:wincmd j<cr>") 
vim.cmd("nnoremap <C-/> <cmd>:WhichKey<cr>") 
