vim.g.mapleader = " "

-- Esc2回でハイライトを消す
vim.api.nvim_set_keymap("n", "<Esc><Esc>", ":nohlsearch<CR>", { noremap = true, silent = true })

-- カーソル移動
vim.api.nvim_set_keymap("n", "j", "gj", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "k", "gk", { noremap = true, silent = true })

-- バッファ移動
vim.api.nvim_set_keymap("n", "<C-j>", ":bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", ":bprev<CR>", { noremap = true, silent = true })

-- Quickfix
vim.api.nvim_set_keymap("n", "<C-q>", ":cclose<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-h>", ":cnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", ":cprev<CR>", { noremap = true, silent = true })


-- xやsで削除したデータではレジスタを変更しない
-- レジスタの変更はdやcで行う
for _, key in pairs({ "x", "X", "s", "S" }) do
	for _, mode in pairs({ "n", "v" }) do
		vim.api.nvim_set_keymap(mode, key, "\"_"..key, { noremap = true, silent = false })
	end
end

-- 分割したバッファのリサイズ
vim.api.nvim_set_keymap("n", "<C-w>s", ":resize ", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-w>v", ":vertical resize ", { noremap = true })

-- NetRWを開いたり閉じたりする
vim.g.netrw_buffer_id = 0
vim.keymap.set("n", "<C-e>", function()
	if vim.g.netrw_buffer_id == 0 then
		vim.cmd("vsplit")
		vim.cmd("Ex")
		vim.cmd("vertical resize 30")
		vim.g.netrw_buffer_id = vim.api.nvim_get_current_buf()
	else
		vim.cmd("bwipeout " .. vim.g.netrw_buffer_id)
		vim.g.netrw_buffer_id = 0
	end
end)

-- ターミナル
vim.api.nvim_set_keymap("n", "<C-q>", ":ToggleTerm direction=float<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })

-- LSPの設定
require("keymappings.lsp")

-- chowcho.nvimの設定
require("keymappings.chowcho")
