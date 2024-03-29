return require("packer").startup(function(use)
	-- packer自身
	use("wbthomason/packer.nvim")

	-- あいまい幅の文字をいい感じに表示するよう調整してくれる
	use("rbtnn/vim-ambiwidth")

	-- editorconfig
	use("editorconfig/editorconfig-vim")

	-- コマンドラインモード時の補完をいい感じに拡張してくれる
	use({
		"gelguy/wilder.nvim",
		config = function()
			local wilder = require("wilder")
			wilder.setup({modes = {":", "/", "?"}})
			wilder.set_option("renderer", wilder.wildmenu_renderer({
				highlighter = wilder.basic_highlighter(),
			}))
		end,
	})

	-- 分割されたウィンドウの移動を楽にしてくれる
	use('tkmpypy/chowcho.nvim')

	-- インデントの可視化
	use("lukas-reineke/indent-blankline.nvim", { opt = true })

	-- カラーピッカー
	use("uga-rosa/ccc.nvim", { opt = true })

	-- LSPの設定集
	use("neovim/nvim-lspconfig")

	-- LSPサーバーの管理(nvim-lspconfigと連携させる)
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	-- カラースキーマ
	use("tomasr/molokai")

	use({"akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup()
	end})
end)
