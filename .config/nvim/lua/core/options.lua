local opt = vim.opt

--line numbers
opt.relativenumber = true
opt.number = true --show active line actual number

--tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

--line wrapping
opt.wrap = false

--search setting
opt.ignorecase = true
opt.smartcase = true --/Hello will not find hello

--backspace
opt.backspace = "indent,eol,start"

--clipboard
opt.clipboard:append("unnamedplus")

--split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
