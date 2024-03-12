return {


	-- javascript throw error
	vim.keymap.set("n", "<leader>wtne", function()
			local pos = vim.api.nvim_win_get_cursor(0)[2]
			local line = vim.api.nvim_get_current_line()
			local nline = line:sub(0, pos) .. 'throw new Error(``)' .. line:sub(pos + 1)
			vim.api.nvim_set_current_line(nline)

			local r, c = unpack(vim.api.nvim_win_get_cursor(0))
			vim.print(r)
			c = c + 17
			vim.api.nvim_win_set_cursor(0, { r, c }) -- Set cursor position to 14th character (second quote)
		end,
		{ desc = 'Writes throw new Error' }),


	-- javascript console.log
	vim.keymap.set("n", "<leader>wcl", function()
			local pos = vim.api.nvim_win_get_cursor(0)[2]
			local line = vim.api.nvim_get_current_line()
			local nline = line:sub(0, pos) .. 'console.log(``)' .. line:sub(pos + 1)
			vim.api.nvim_set_current_line(nline)

			local r, c = unpack(vim.api.nvim_win_get_cursor(0))
			vim.print(r)
			c = c + 13
			vim.api.nvim_win_set_cursor(0, { r, c }) -- Set cursor position to 14th character (second quote)
		end,
		{ desc = 'Writes console.log' }),

	-- javascript assert isObject
	vim.keymap.set("n", "<leader>wasso", function()
			local pos = vim.api.nvim_win_get_cursor(0)[2]
			local line = vim.api.nvim_get_current_line()
			local wass = 'assert(_.isObject(zzz), \"zzz should be an object !\\n\" + \"zzz :\\n" + JSON.stringify(zzz))'
			local nline = line:sub(0, pos) .. wass .. line:sub(pos + 1)
			vim.api.nvim_set_current_line(nline)

			local r, c = unpack(vim.api.nvim_win_get_cursor(0))
			vim.print(r)
			vim.api.nvim_win_set_cursor(0, { r, c }) -- Set cursor position to 14th character (second quote)
		end,
		{ desc = 'Writes throw new Error' }),

	-- javascript assert isNumber
	vim.keymap.set("n", "<leader>wassn", function()
			local pos = vim.api.nvim_win_get_cursor(0)[2]
			local line = vim.api.nvim_get_current_line()
			local wass = 'assert(_.isNumber(zzz), \"zzz should be a number!\\n\" + \"zzz : \" + JSON.stringify(zzz))'
			local nline = line:sub(0, pos) .. wass .. line:sub(pos + 1)
			vim.api.nvim_set_current_line(nline)

			local r, c = unpack(vim.api.nvim_win_get_cursor(0))
			vim.print(r)
			vim.api.nvim_win_set_cursor(0, { r, c }) -- Set cursor position to 14th character (second quote)
		end,
		{ desc = 'Writes throw new Error' }),


	-- coffee script console log
	vim.keymap.set("n", "<leader>wccl", function()
			local pos = vim.api.nvim_win_get_cursor(0)[2]
			local line = vim.api.nvim_get_current_line()
			local nline = line:sub(0, pos) .. 'console.log \"\"' .. line:sub(pos + 1)
			vim.api.nvim_set_current_line(nline)

			local r, c = unpack(vim.api.nvim_win_get_cursor(0))
			vim.print(r)
			c = c + 13
			vim.api.nvim_win_set_cursor(0, { r, c }) -- Set cursor position to 14th character (second quote)
		end,
		{ desc = 'Writes console.log' })

}
