vim.g.mapleader = " "

local keymap = vim.keymap

--@genral keymaps
keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader><leader>", ":colorscheme pywal<CR>:source ~/.config/nvim/lua/core/colorscheme.lua<CR>")

keymap.set("n", "ff", ":lua vim.lsp.buf.format()<CR><ESC>")

keymap.set("n", "<ESC>", ":nohl<CR>")
keymap.set("n", "x", '"_x')
keymap.set("v", "x", '"_x')
keymap.set("n", ";", ":")

keymap.set("n", "<leader>sb", "<C-w>v") --split window vertically
keymap.set("n", "<leader>sv", "<C-w>s") --split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") --make split window equal size
keymap.set("n", "<leader>x", ":close<CR>") --close split window
keymap.set("n", "<leader>bx", ":close<CR>") --close buffer

keymap.set("n", "<Tab>", ":bnext<CR>") --next buffer
keymap.set("n", "<S-Tab>", ":bprevious<CR>") --previous buffer

----------------------
-- Plugin Keybinds
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
