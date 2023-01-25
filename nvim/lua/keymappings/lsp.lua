-- jumps
vim.keymap.set('n', 'gr', vim.lsp.buf.references)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation)
vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition)

vim.keymap.set('n', 'K',  vim.lsp.buf.hover)
vim.keymap.set('n', '<leader>f', vim.lsp.buf.formatting)
vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename)
vim.keymap.set('n', '<leader><leader>', vim.lsp.buf.code_action)
vim.keymap.set('n', '<leader>o', vim.diagnostic.open_float)
vim.keymap.set('n', ']]', vim.diagnostic.goto_next)
vim.keymap.set('n', '[[', vim.diagnostic.goto_prev)
