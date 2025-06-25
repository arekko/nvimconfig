return {
	{
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    -- fill any relevant options here
  },
  config = function()
	-- Mappings
	-- 
	vim.keymap.set('n', '<leader>1', '<cmd>Neotree left reveal toggle<CR>', { noremap = true, silent = true })
	vim.keymap.set('n', '<leader>e', '<cmd>Neotree float reveal toggle<CR>', { noremap = true, silent = true })
  end
}
}
