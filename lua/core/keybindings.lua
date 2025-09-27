local function map(m, k, v)
	vim.keymap.set(m, k, v, { silent = true, noremap = true })
end

-- Remap switching to normal mode
map("i", "jj", "<Esc>")

-- Remap saving buffer to cmd + s
map("n", "<D-s>", ":w<CR>")
map("i", "<D-s>", "<Esc>:w<CR>a")

-- Split navigation
--
map("n", "<C-h>", "<C-w><C-h>") -- ⬅️ Left
map("n", "<C-j>", "<C-w><C-j>") -- ⬇️ Down
map("n", "<C-k>", "<C-w><C-k>") -- ⬆️ Up
map("n", "<C-l>", "<C-w><C-l>") -- ➡️ Right

-- Split
--
map("n", "<c-s>", "<cmd>vsplit<CR>")
map("n", "<c-s><c-h>", "<cmd>split<CR>")

-- Plugin keybindings

-- Keymap for Telescope Harpoon marks
--
vim.keymap.set("n", "<leader>bc", "<cmd>BookmarksMark<cr>", { desc = "Bookmark Mark / Toggle" })
vim.keymap.set("n", "<leader>bl", "<cmd>BookmarksLists<cr>", { desc = "Bookmark Lists" })
vim.keymap.set("n", "<leader>bj", "<cmd>BookmarksGoto<cr>", { desc = "Jump to Bookmark" })

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
