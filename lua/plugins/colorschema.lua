return {
	-- {
	-- 	"askfiy/visual_studio_code",
	-- 	priority = 100,
	-- 	config = function()
	-- 		vim.cmd([[colorscheme visual_studio_code]])
	-- 	end,
	-- },
	-- {
	-- 	"projekt0n/github-nvim-theme",
	-- 	name = "github-theme",
	-- 	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	-- 	priority = 1000, -- make sure to load this before all the other start plugins
	-- 	config = function()
	-- 		require("github-theme").setup({
	-- 			-- ...
	-- 		})
	--
	-- 		vim.cmd("colorscheme github_dark")
	-- 	end,
	-- },
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				no_italic = true,
			})
			vim.cmd("colorscheme catppuccin-frappe")
		end,
	},
	-- {
	-- 	"AlexvZyl/nordic.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("nordic").load()
	-- 	end,
	-- },
	--
	--
	--{ "" }
	-- {
	-- 	"EdenEast/nightfox.nvim",
	-- 	name = "dawnfox",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("nightfox").setup({
	-- 			options = {
	-- 				styles = {
	-- 					comments = "NONE",
	-- 					conditionals = "NONE",
	-- 					constants = "NONE",
	-- 					functions = "NONE",
	-- 					keywords = "NONE",
	-- 					numbers = "NONE",
	-- 					operators = "NONE",
	-- 					preprocs = "NONE",
	-- 					strings = "NONE",
	-- 					types = "NONE",
	-- 					variables = "NONE",
	-- 				},
	-- 			},
	-- 			groups = {
	-- 				all = {
	-- 					Italic = { style = "NONE" },
	-- 					["@markup.italic"] = { style = "NONE" },
	-- 					["@markup.link.url"] = { style = "underline" },
	-- 					["@string.special.url"] = { style = "underline" },
	-- 					["@markup.raw"] = { style = "NONE" },
	-- 					["@tag.attribute"] = { style = "NONE" },
	-- 					NeoTreeGitConflict = { style = "NONE" },
	-- 					MiniStarterFooter = { style = "NONE" },
	-- 					DashboardFooter = { style = "NONE" },
	-- 				},
	-- 			},
	-- 		})
	-- 		vim.cmd("colorscheme dayfox")
	-- 	end,
	-- },
}
