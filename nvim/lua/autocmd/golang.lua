local group = vim.api.nvim_create_augroup("LangsettingGo", {})

vim.api.nvim_create_autocmd("BufWritePre", {
	group = group,
	pattern = "*.go",
	callback = function()
		vim.lsp.buf.format({ async = false })
	end,
})
