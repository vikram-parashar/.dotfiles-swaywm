local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
	return
end

--from docs(recommended)
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- vim.cmd([[ hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white ]])
-- vim.cmd([[ hi Directory cterm=NONE  ctermfg=darkred  ]])

nvimtree.setup({
	renderer = {
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "",
					arrow_open = "",
				},
			},
		},
	},
	actions = {
		open_file = {
			window_picker = {
				enable = false,
			},
		},
	},
})
