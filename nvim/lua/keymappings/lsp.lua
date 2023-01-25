-- jumps
vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
vim.keymap.set('n', 'gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>')

vim.keymap.set('n', 'K',  '<cmd>lua vim.lsp.buf.hover()<CR>')
vim.keymap.set('n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>')
vim.keymap.set('n', '<leader>r', '<cmd>lua vim.lsp.buf.rename()<CR>')
vim.keymap.set('n', '<leader><leader>', '<cmd>lua vim.lsp.buf.code_action()<CR>')
vim.keymap.set('n', '<leader>o', '<cmd>lua vim.diagnostic.open_float()<CR>')
vim.keymap.set('n', ']]', '<cmd>lua vim.diagnostic.goto_next()<CR>')
vim.keymap.set('n', '[[', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
