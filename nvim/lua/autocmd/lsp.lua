local group = vim.api.nvim_create_augroup("LspDocumentHighlight", {})

-- カーソル下の変数をハイライト
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
	group = group,
	pattern = "*",
	callback = vim.lsp.buf.document_highlight,
})

-- カーソルを動かしたらハイライトを消す
vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
	group = group,
	pattern = "*",
	callback = vim.lsp.buf.clear_references,
})

-- LSP全般で使いたいキーバインド
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local opts = { buffer = args.buf }
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'grr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', 'grn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', 'gra', vim.lsp.buf.code_action, opts)

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
