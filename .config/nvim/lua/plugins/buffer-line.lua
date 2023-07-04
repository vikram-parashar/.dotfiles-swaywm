local setup, bufferline = pcall(require, "bufferline")
if not setup then
	return
end

bufferline.setup({
	options = {
		style_preset = {
			bufferline.style_preset.no_italic,
			bufferline.style_preset.no_bold,
		},
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				highlight = "Directory",
				separator = true, -- use a "true" to enable the default, or set your own character
			},
		},
		hover = {
			enabled = true,
			delay = 200,
			reveal = { "close" },
		},
	},
})
