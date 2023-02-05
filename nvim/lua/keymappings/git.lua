vim.api.nvim_create_user_command("Git", function()
	local Terminal = require("toggleterm.terminal").Terminal
	local lazygit = Terminal:new({
		cmd="lazygit",
		direction="float"
	})
	lazygit:toggle()
end, {})
