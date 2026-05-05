return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			-- vim.lsp.enable("lua_ls")
			-- vim.lsp.enable("")
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			local function lsp_references_without_preview()
				-- Work around a Treesitter preview crash in Telescope reference results.
				require("telescope.builtin").lsp_references({ previewer = false })
			end

			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls" },
			})

			-- LSP keymaps
			vim.api.nvim_create_autocmd("LspAttach", {
				desc = "LSP actions",
				callback = function(event)
					local opts = { buffer = event.buf, remap = false }
					local telescope = require("telescope.builtin")
					vim.keymap.set("n", "gd", telescope.lsp_definitions, vim.tbl_extend("force", opts, { desc = "Go to definition" }))
					vim.keymap.set("n", "K", vim.lsp.buf.hover, vim.tbl_extend("force", opts, { desc = "Hover documentation" }))
					vim.keymap.set("n", "<leader>vs", telescope.lsp_workspace_symbols, vim.tbl_extend("force", opts, { desc = "View workspace symbols" }))
					vim.keymap.set("n", "<leader>df", telescope.lsp_document_symbols, vim.tbl_extend("force", opts, { desc = "Document symbols" }))
					vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, vim.tbl_extend("force", opts, { desc = "View diagnostic" }))
					vim.keymap.set("n", "[d", vim.diagnostic.goto_next, vim.tbl_extend("force", opts, { desc = "Next diagnostic" }))
					vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, vim.tbl_extend("force", opts, { desc = "Previous diagnostic" }))
					vim.keymap.set(
						{ "n", "v" },
						"<C-Enter>",
						vim.lsp.buf.code_action,
						{ buffer = event.buf, remap = true, desc = "Code action" }
					)
					vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, vim.tbl_extend("force", opts, { desc = "Code action" }))
					vim.keymap.set("n", "<leader>vrr", lsp_references_without_preview, vim.tbl_extend("force", opts, { desc = "View references" }))
					vim.keymap.set("n", "gr", lsp_references_without_preview, vim.tbl_extend("force", opts, { desc = "Go to references" }))
					vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, vim.tbl_extend("force", opts, { desc = "Signature help" }))
					-- Use a different keybinding for diagnostic float to avoid conflict with window navigation
					vim.keymap.set("n", "<leader>vh", vim.diagnostic.open_float, { buffer = event.buf, remap = true, desc = "View diagnostic (hover)" })
					vim.keymap.set("n", "<leader>fo", function()
						vim.lsp.buf.format()
					end, vim.tbl_extend("force", opts, { desc = "Format buffer" }))
					vim.keymap.set("n", "gi", telescope.lsp_implementations, vim.tbl_extend("force", opts, { desc = "Go to implementation" }))
					vim.keymap.set("n", "<leader>ic", telescope.lsp_incoming_calls, vim.tbl_extend("force", opts, { desc = "Incoming calls" }))
					vim.keymap.set("n", "<leader>oc", telescope.lsp_outgoing_calls, vim.tbl_extend("force", opts, { desc = "Outgoing calls" }))
					vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, vim.tbl_extend("force", opts, { desc = "Rename symbol" }))
				end,
			})
		end,
	},
}
