vim.g.mapleader = " "

-- Esc2回でハイライトを消す
vim.api.nvim_set_keymap("n", "<Esc><Esc>", ":nohlsearch<CR>", { noremap = true, silent = true })

-- カーソル移動
vim.api.nvim_set_keymap("n", "j", "gj", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "k", "gk", { noremap = true, silent = true })

-- バッファ移動
vim.api.nvim_set_keymap("n", "<C-j>", ":bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", ":bprev<CR>", { noremap = true, silent = true })

-- xやsで削除したデータではレジスタを変更しない
-- レジスタの変更はdやcで行う
for _, key in pairs({ "x", "X", "s", "S" }) do
	for _, mode in pairs({ "n", "v" }) do
		vim.api.nvim_set_keymap(mode, key, "\"_"..key, { noremap = true, silent = false })
	end
end

-- ヤンクしてきた結果を連続してペーストできるようにする
vim.api.nvim_set_keymap("v", "p", "\"_xP", { noremap = true, silent = true })

-- 分割したバッファのリサイズ
vim.api.nvim_set_keymap("n", "<C-w>s", ":resize ", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-w>v", ":vertical resize ", { noremap = true })

-- chowcho.nvimの設定
require("keymappings.chowcho")
