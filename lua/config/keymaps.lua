-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "-", "<cmd>Oil --float<CR>", { desc = "Open Parent Directory in Oil" })

vim.keymap.set("n", "<C-d", "5j", { noremap = true, silent = true })
vim.keymap.set("n", "<C-u", "5k", { noremap = true, silent = true })
