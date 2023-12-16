-- Make space into leader
vim.g.mapleader = " "

-- Bind Explore command to space+pv (brings you back to netrw)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move your visual select around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")
