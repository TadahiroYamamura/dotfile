local group = vim.api.nvim_create_augroup("FileTypeSpecificSettingsLua", {})
vim.api.nvim_create_autocmd("FileType", {
	group = group,
	pattern = "lua",
	callback = function()
		vim.opt.expandtab = false
		vim.opt.tabstop = 2
		vim.opt.shiftwidth = 2
		vim.opt.autoindent = true
		vim.opt.smartindent = true

		-- インデントの可視化
		vim.opt.list = false
		require("indent_blankline").setup({
			char = "",
			char_highlight_list = {"IndentBlanklineIndent01", "IndentBlanklineIndent02" },
			space_char_highlight_list = {"IndentBlanklineIndent01", "IndentBlanklineIndent02" },
			show_trailing_blankline_indent = false
		})
	end,
})
