local function map(m, k, v)
	vim.keymap.set(m, k, v, { silent = true, noremap = true })
end

-- Remap switching to normal mode
map("i", "jj", "<Esc>")

-- Remap saving buffer to cmd + s
map("n", "<D-s>", ":w<CR>")

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
