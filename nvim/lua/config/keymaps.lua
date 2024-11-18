-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Adds comma to the end ang opens new line
vim.api.nvim_set_keymap("n", "<leader>c", "A,<Esc>o", { noremap = true, silent = true })

-- Opens a terminal and enters insert mode
vim.api.nvim_set_keymap("n", "<leader>t", ":term<Esc>i", { noremap = true, silent = true })
