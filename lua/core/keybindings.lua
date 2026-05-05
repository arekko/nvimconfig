local function map(m, k, v, desc)
	vim.keymap.set(m, k, v, { silent = true, noremap = true, desc = desc })
end

-- Remap switching to normal mode
map("i", "jj", "<Esc>", "Exit insert mode")

-- Remap saving buffer to cmd + s
map("n", "<D-s>", ":w<CR>", "Save buffer")
map("i", "<D-s>", "<Esc>:w<CR>a", "Save buffer")

-- Split navigation
--
map("n", "<C-h>", "<C-w><C-h>", "Navigate to left split") -- ⬅️ Left
map("n", "<C-j>", "<C-w><C-j>", "Navigate to bottom split") -- ⬇️ Down
map("n", "<C-k>", "<C-w><C-k>", "Navigate to top split") -- ⬆️ Up
map("n", "<C-l>", "<C-w><C-l>", "Navigate to right split") -- ➡️ Right

-- Split
--
map("n", "<c-s>", "<cmd>vsplit<CR>", "Vertical split")
map("n", "<c-s><c-h>", "<cmd>split<CR>", "Horizontal split")

-- Plugin keybindings

-- Keymap for Telescope Harpoon marks
--
vim.keymap.set("n", "<leader>bc", "<cmd>BookmarksMark<cr>", { desc = "Bookmark Mark / Toggle" })
vim.keymap.set("n", "<leader>bl", "<cmd>BookmarksLists<cr>", { desc = "Bookmark Lists" })
vim.keymap.set("n", "<leader>bj", "<cmd>BookmarksGoto<cr>", { desc = "Jump to Bookmark" })

--- Telescope Harpoon
---
vim.keymap.set(
	"n",
	"<leader>hl",
	"<cmd>Telescope harpoon marks<CR>",
	{ desc = "Open sidebar navigation tree", noremap = true, silent = true }
)

--- NeoTree keybindings
vim.keymap.set(
	"n",
	"<leader>1",
	"<cmd>Neotree left reveal toggle<CR>",
	{ desc = "Open sidebar navigation tree", noremap = true, silent = true }
)
vim.keymap.set(
	"n",
	"<leader>e",
	"<cmd>Neotree float reveal toggle<CR>",
	{ desc = "Open float navigation tree", noremap = true, silent = true }
)
