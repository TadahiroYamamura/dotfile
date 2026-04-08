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

-- LSP全般で使いたいキーバインド
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local keymaps = {
      n = {
        ["K"] = vim.lsp.buf.hover,
        ["gd"] = vim.lsp.buf.definition,
        ["grr"] = vim.lsp.buf.references,
        ["grn"] = vim.lsp.buf.rename,
        ["gra"] = vim.lsp.buf.code_action,
      },
    }

    for mode, keymap in pairs(keymaps) do
      for key, command in pairs(keymap) do
        vim.keymap.set(mode, key, command, { buffer = args.buf })
      end
    end

    -- 定義をジャンプせずにチラッと確認したい時に使う
    vim.keymap.set("n", "gp", function()
      local params = vim.lsp.util.make_position_params(0, 'utf-8')
      return vim.lsp.buf_request(0, "textDocument/definition", params, function(_, result)
        if result == nil or vim.tbl_isempty(result) then
          print("No definition found")
          return
        end
        vim.lsp.util.preview_location(result[1], { border = "rounded" })
      end)
    end, { desc = "Peek Definition" })
  end,
})
