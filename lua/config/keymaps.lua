-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local del = vim.keymap.del

map("i", "jk", "<esc>", { desc = "jk To normal mode" })

-- Remap 'gs' to LSP signature help in normal mode
map("n", "gs", vim.lsp.buf.signature_help, { desc = "LSP Signature Help" })

del("n", "<leader>l")
del("n", "]d")
del("n", "[d")

-- Jump to the previous diagnostic
map("n", "<leader>lj", vim.diagnostic.goto_prev, { desc = "Prev Diagnostic" })

-- Jump to the next diagnostic
map("n", "<leader>lk", vim.diagnostic.goto_next, { desc = "Next Diagnostic" })

-- Save file
map("n", "<leader>w", ":w<CR>", { desc = "Save file" })
-- Quit file
map("n", "<leader>q", ":q<CR>", { desc = "Exit" })

-- See diagnostic
vim.keymap.set("n", "gl", function()
  vim.diagnostic.open_float()
end, { noremap = true, silent = true })

del("n", "<leader>bb")
map("n", "<leader>bb", ":bnext<CR>", { desc = "Next Buffer" })
map("n", "<leader>bn", ":bprevious<CR>", { desc = "Previous Buffer" })

-- Commenting
map("n", "gk", ":normal gcc<CR>", { desc = "Toggle comment" })
