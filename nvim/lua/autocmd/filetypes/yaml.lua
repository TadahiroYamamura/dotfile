local group = vim.api.nvim_create_augroup("FileTypeSpecificSettingsYaml", {})
vim.api.nvim_create_autocmd("FileType", {
	group = group,
	pattern = "yaml",
	callback = function()
		vim.opt.expandtab = true
		vim.opt.tabstop = 2
		vim.opt.shiftwidth = 2
		vim.opt.autoindent = true
		vim.opt.smartindent = true

		-- インデントの可視化
		require("indent_blankline").setup({
			char = "",
			char_highlight_list = {"IndentBlanklineIndent01", "IndentBlanklineIndent02" },
			space_char_highlight_list = {"IndentBlanklineIndent01", "IndentBlanklineIndent02" },
			show_trailing_blankline_indent = false
		})
	end,
})

