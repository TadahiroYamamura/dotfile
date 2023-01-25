vim.api.nvim_create_autocmd(
	"FileType",
	{
		pattern = "netrw",
		callback = function() vim.b.bufhidden = "wipe" end,
	}
)
