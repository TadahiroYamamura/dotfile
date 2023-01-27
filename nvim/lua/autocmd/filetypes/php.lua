local group = vim.api.nvim_create_augroup("FileTypeSpecificSettingsPHP", {})
vim.api.nvim_create_autocmd("FileType", {
	group = group,
	pattern = "php",
	callback = function()
		vim.opt.expandtab = false
		vim.opt.tabstop = 4
		vim.opt.shiftwidth = 4
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

