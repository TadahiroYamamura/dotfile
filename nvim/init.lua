-- 文字エンコード
vim.opt.fileencodings = { "UTF-8", "cp932" }

-- 改行文字
vim.opt.fileformat = "unix"

-- "+"レジスタをクリップボードに使用する
vim.opt.clipboard = "unnamedplus"

-- unicodeの曖昧幅な文字(例：■)を"幅1"として指定する
-- 補完等の表示時に崩れが発生するのを防止するため
-- この指定の際に発生する不具合についてはプラグイン(rbtnn/vim-ambiwidth)で対応する。
vim.opt.ambiwidth = "single"

-- 画面左に数字を表示する
vim.opt.number = true
vim.opt.relativenumber = true

-- カーソルのある場所を強調表示させる
vim.opt.cursorcolumn = true
vim.opt.cursorline = true
vim.opt.cursorlineopt = { "number", "screenline" }

-- <BS>や<Del>による削除では改行等も削除させる
vim.opt.backspace = { "indent", "eol", "start" }

-- コマンドラインの補完をわかりやすくする
vim.opt.wildmenu = true
vim.opt.completeopt = { "menuone", "preview", "noinsert" }

-- 特殊文字の表示
vim.opt.list = false
vim.opt.listchars = { tab = "^ ", space = "_" }

-- バッファ内の検索
vim.opt.hlsearch = true
vim.opt.ignorecase = true

-- swapファイルを作らない
vim.opt.swapfile = false

-- 初期状態では文字列を折り返さない
vim.opt.wrap = false

-- 行数等の情報を表示させる
vim.opt.ruler = true

-- カラースキーマの指定
vim.cmd("colorscheme molokai")

require("plugins")
require("keymappings")
require("netrw")
require("autocmd")
