-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
	require('telescope').setup {
		defaults = {
			previewer = true,
			layout_strategy = "vertical",
			sorting_strategy = "ascending",
			layout_config = {
				mirror = true,
				preview_cutoff = 0,
				--
				height = function(_, _, max_lines)
					return math.min(max_lines, vim.o.lines)
				end,
				width = function(_, max_columns, _)
					return math.min(max_columns, vim.o.columns)
				end,
				prompt_position = "top",
			},
		},
	},


}
