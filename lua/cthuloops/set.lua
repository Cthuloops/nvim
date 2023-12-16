-- Line numbers + relative
vim.opt.nu = true
vim.opt.relativenumber = true

-- tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- indenting
vim.opt.smartindent = true

-- no wrap
vim.opt.wrap = false



-- search highlight and incremental search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- colors
vim.opt.termguicolors = true

-- keep 8 rows when scrolling
vim.opt.scrolloff = 8

-- idk
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- move your visual select around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Appends line beneath to current line + a space without moving the cursor
vim.keymap.set("n", "J", "mzJ'z")

-- allows half page jumping while keeping cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep cursor in the middle while searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- deleting to void register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")
-- delete vis selection to void register while pasting
vim.keymap.set("x", "<leader>p", "\"_dP")

-- asbjornHaland keymap + register(systemclipboard) yanks to clip
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- saves changes when in vertical edit mode (not that i know how to get to that)
vim.keymap.set("i", "<C-c>", "<Esc>")

-- don't press capital Q
vim.keymap.set("n", "Q", "<nop>")

-- something with tmux lets you choose another project?
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- vim.keymap.set("n", "<leader>f", function()
    -- vim.lsp.buf.format()
    -- end)

-- Quick fix navigation (something about quick fix list)
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- search and replace for current word in the whole document
vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- runs chmod x on the file you're working on for making bash script executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
