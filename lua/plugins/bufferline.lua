return {
	{'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function()
		require("bufferline").setup({})

		-- Mappings
		vim.keymap.set('n', '<Tab>', '<cmd>BufferLineCycleNext<CR>', { silent = true, noremap = true })
		vim.keymap.set('n', '<s-Tab>', '<cmd>BufferLineCyclePrev<CR>', { silent = true, noremap = true })
		vim.keymap.set('n', '<leader>w', '<cmd>BufferLinePickClose<CR>', { silent = true, noremap = true })
		vim.keymap.set('n', '<c-w>', '<cmd>BufferLineCloseOthers<CR>', { silent = true, noremap = true })

	end
}
}
