local group = vim.api.nvim_create_augroup("LspDocumentHighlight", {})
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
	group = group,
	pattern = "*",
	callback = vim.lsp.buf.document_highlight,
})
vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
	group = group,
	pattern = "*",
	callback = vim.lsp.buf.clear_references,
})
