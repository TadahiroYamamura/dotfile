-- 行番号の表示
vim.opt.number = true
vim.opt.relativenumber = true

-- タブとインデント
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- 検索
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- クリップボード
vim.opt.clipboard = 'unnamedplus'

-- カーソルの強調表示
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.cursorlineopt = { 'number', 'screenline' }

-- 特殊文字の表示
vim.opt.listchars = { tab = '^ ', space = '･' }

-- swapファイルを作らない
vim.opt.swapfile = false

-- 長い文章があった場合の折返し
vim.opt.wrap = false

-- カラースキーマ
vim.opt.termguicolors = true

-- カーソルが動いていないと判断する時間[ms]
vim.opt.updatetime = 500

-- diagnosticに表示する内容は深刻度順にソートする
vim.diagnostic.config({severity_sort = true})
