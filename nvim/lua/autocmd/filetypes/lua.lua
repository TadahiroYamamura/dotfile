vim.api.nvim_create_autocmd("FileType", {
	pattern = "lua",
	callback = function()
		vim.opt.expandtab = false
		vim.opt.tabstop = 2
		vim.opt.shiftwidth = 2
		vim.opt.autoindent = true
		vim.opt.smartindent = true
	end,
})
