-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- DAP
vim.keymap.set("n", "<leader>p", function()
  require("dap").toggle_breakpoint()
end, { desc = "Set breakpoint" })
