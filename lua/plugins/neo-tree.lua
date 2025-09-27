return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		--		cmd = "Neotree",
		opts = {
			-- fill any relevant options here
			filesystem = {
				-- stop auto-opening when starting in a directory or using :Ex
				follow_current_file = { enabled = true },
				-- hijack_netrw_behavior = "disabled",
			},
			window = { position = "float" },
			-- closes Neo-tree if it would be the last window
			close_if_last_window = true,
		},
	},
}
