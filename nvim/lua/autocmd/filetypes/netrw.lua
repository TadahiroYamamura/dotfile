local group = vim.api.nvim_create_augroup("FileTypeSpecificSettingsNetrw", {})
vim.api.nvim_create_autocmd("FileType", {
	group = group,
	pattern = "netrw",
	callback = function() vim.b.bufhidden = "wipe" end,
})
