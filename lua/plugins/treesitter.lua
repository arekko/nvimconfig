return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
				require("nvim-treesitter.configs").setup({
					ensure_installed = { "c", "lua", "vim", "markdown", "markdown_inline", "typescript", "javascript" },
					auto_install = true,
					highlight = {
						enable = true,
						disable = { "markdown" },
					},
				})

				local markdown_group = vim.api.nvim_create_augroup("markdown_no_treesitter", { clear = true })
				local function disable_markdown_treesitter(buf)
					vim.bo[buf].syntax = "markdown"
					pcall(vim.treesitter.stop, buf)
					vim.schedule(function()
						if vim.api.nvim_buf_is_valid(buf) then
							pcall(vim.treesitter.stop, buf)
						end
					end)
				end

				vim.api.nvim_create_autocmd({ "FileType", "BufEnter" }, {
					group = markdown_group,
					pattern = { "markdown", "*.md", "*.markdown" },
					callback = function(args)
						disable_markdown_treesitter(args.buf)
					end,
				})
		end

	}
}
