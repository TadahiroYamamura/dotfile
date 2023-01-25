local group = vim.api.nvim_create_augroup("FileTypeSpecificSettingsAll", {})
vim.api.nvim_create_autocmd("FileType", {
	group = group,
	pattern = "*",
	callback = function()
		vim.opt.expandtab = false
		vim.opt.tabstop = 4
		vim.opt.shiftwidth = 4
		vim.opt.autoindent = false
		vim.opt.smartindent = false
	end,
})
