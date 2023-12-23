return {
	'rmagatti/auto-session',
	config = function()
		require("auto-session").setup {
			auto_session_enabled = true,
			auto_session_enable_last_session = true,
			auto_session_last_session_dir = "$HOME/.sessions/last_session",
			auto_session_root_dir = "$HOME/.sessions/" ,
			log_level = "error",
		}
	end
}
