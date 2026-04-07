-- ファジーファインダー
return {
	'nvim-telescope/telescope.nvim',
	dependencies = {
		{'nvim-lua/plenary.nvim'},
		{'BurntSushi/ripgrep'},
	},
	keys = {
		{ '<leader>ff', require('telescope.builtin').find_files, mode='n' },
		{ '<leader>fg', require('telescope.builtin').live_grep, mode='n' },
	}
}
