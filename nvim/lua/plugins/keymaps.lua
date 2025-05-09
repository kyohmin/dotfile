-- telescope
vim.keymap.set("n", "<leader>fs", ":Telescope find_files<cr>")
vim.keymap.set("n", "<leader>fp", ":Telescope git_files<cr>")
vim.keymap.set("n", "<leader>fz", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fo", ":Telescope oldfiles<cr>")

-- tree
vim.keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<cr>")

-- comment
vim.keymap.set("n", "<leader>mp", ":NvimTreeFindFileToggle<cr>")
vim.keymap.set({"n", "v"}, "<leader>/", ":CommentToggle<cr>")

-- yank to clipboard
vim.keymap.set({"n","v"}, "<leader>y", [["+y"]])
