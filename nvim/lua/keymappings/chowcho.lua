vim.keymap.set("n", "<C-w><C-w>", function()
	local chowcho = require("chowcho")

	local focusable = function(win_id)
		return vim.api.nvim_win_get_config(win_id).focusable
	end

	local windows = function()
		local cnt = 0
		for i = 1, vim.fn.winnr("$") do
			if focusable(vim.fn.win_getid(i)) then
				cnt = cnt + 1
			end
		end
		return cnt
	end

	if windows() > 2 then
		chowcho.run()
	else
		vim.api.nvim_command("wincmd w")
	end
end)
