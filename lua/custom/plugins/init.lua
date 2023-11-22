-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
	require('telescope').setup {
		defaults = {
			previewer = false,
			layout_strategy = "center",
			sorting_strategy = "ascending",
			layout_config = {
				height = function(_, _, max_lines)
					return math.min(max_lines, vim.o.lines)
				end,
				width = function(_, max_columns, _)
					return math.min(max_columns, vim.o.columns)
				end,
				prompt_position = "top",
				preview_cutoff = 0.5
			},
		},
	},


}
