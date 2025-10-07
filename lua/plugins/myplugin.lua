return {
	{
		name = "myplugin", -- optional explicit name
		dir = "~/code/lua/myplugin", -- your local path
		config = function()
			require("myplugin").setup({
				greeting = "Local dev!",
			})
		end,
	},
}
