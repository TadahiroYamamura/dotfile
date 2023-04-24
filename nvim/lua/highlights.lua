vim.api.nvim_set_hl(0, "IndentBlanklineIndent01", {
	fg = "NONE",
	bg = "#1f1f1f",
})
vim.api.nvim_set_hl(0, "IndentBlanklineIndent02", {
	fg = "NONE",
	bg = "#282828"
})
vim.api.nvim_set_hl(0, "lineNr", {
	fg = "#828200",
	bg = "NONE"
})

for _, name in pairs({ "LspReferenceText", "LspReferenceRead", "LspReferenceWrite" }) do
	vim.api.nvim_set_hl(0, name, {
		cterm = { underline = true },
		ctermfg = 1,
		ctermbg = 8,
		underline = true,
		fg = "#333333",
		bg = "#cccc00",
	})
end
