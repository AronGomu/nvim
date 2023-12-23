return {
	vim.keymap.set("n", "<leader>cl", function()
			local pos = vim.api.nvim_win_get_cursor(0)[2]
			local line = vim.api.nvim_get_current_line()
			local nline = line:sub(0, pos) .. 'console.log(``)' .. line:sub(pos + 1)
			vim.api.nvim_set_current_line(nline)

			local r, c = unpack(vim.api.nvim_win_get_cursor(0))
			vim.print(r)
			c = c + 13
			vim.api.nvim_win_set_cursor(0, { r, c }) -- Set cursor position to 14th character (second quote)
		end,
		{ desc = 'Writes console.log' })
}
