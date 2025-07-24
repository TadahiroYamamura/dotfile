-- leaderをspaceに割当てる
vim.g.mapleader = ' '

vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<esc><esc>', ':nohl<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><leader>', '<C-^>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-\\>', '<cmd>sp<cr><C-w>j<cmd>resize 5<cr><cmd>terminal<cr>i', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<esc>', '<C-\\><C-n>', { noremap = true, silent = true })
