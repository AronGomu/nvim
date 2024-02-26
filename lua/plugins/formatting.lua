return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				javascript = { "eslint_d" },
				typescript = { "eslint_d" },
				html       = { "prettier" },
				css        = { "prettier" },
				json       = { "prettier" },
				angular    = { "prettier" },
				graphql    = { "prettier" },
			},
			format_on_save = {
				lsp_fallback = false,
				async = false,
				timeout_ms = 500
			}
		})
	end
}
