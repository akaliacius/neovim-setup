vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", vim.cmd.nohl) -- clear search highlights
-- keymap.set("n", "<leader>ex", vim.cmd.Ex) -- exit to explorer

keymap.set("n", "<leader>+", "<C-a>") -- increment number
keymap.set("n", "<leader>-", "<C-x>") -- decrement number

keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", vim.cmd.close) -- close current window

keymap.set("n", "<leader>to", vim.cmd.tabnew) -- open new tab
keymap.set("n", "<leader>tx", vim.cmd.tabclose) -- close new tab
keymap.set("n", "<leader>tn", vim.cmd.tabn) -- go to next tab
keymap.set("n", "<leader>tp", vim.cmd.tabp) -- go to previous tab

-- plugin keymaps

-- vim-maximizer
keymap.set("n", "<leader>sz", vim.cmd.MaximizerToggle)

-- nvim-tree
keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
