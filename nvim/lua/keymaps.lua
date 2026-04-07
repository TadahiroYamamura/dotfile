-- leaderをspaceに割当てる
vim.g.mapleader = ' '

local keymaps = {
	n = {
		["j"] = "gj",
		["k"] = "gk",
		["<esc><esc>"] = ":nohl<cr>",
		["<leader><leader>"] = "<C-^>",
		["<C-\\>"] = "<cmd>sp<cr><C-w>j<cmd>resize 5<cr><cmd>terminal<cr>i",
	},
	t = {
		["<esc>"] = "<C-\\><C-n>",
	},
}

for mode, keymap in pairs(keymaps) do
	for key, command in pairs(keymap) do
		vim.keymap.set(mode, key, command, { silent = true })
	end
end
