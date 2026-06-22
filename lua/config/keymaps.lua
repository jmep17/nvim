-- Keymaps are automatically loaded on the VeryLazy event.
-- LazyVim defaults: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local map = vim.keymap.set

map("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear Search Highlight" })
map("n", "<leader>ww", "<cmd>write<cr>", { desc = "Save Buffer" })
map("n", "<leader>wq", "<cmd>wq<cr>", { desc = "Save and Quit" })

map({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to System Clipboard" })
map("n", "<leader>Y", [["+Y]], { desc = "Yank Line to System Clipboard" })

map("n", "<leader>fp", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  vim.notify(path, vim.log.levels.INFO, { title = "Copied file path" })
end, { desc = "Copy File Path" })

map("n", "<leader>cf", function()
  local ok, conform = pcall(require, "conform")
  if ok then
    conform.format({ async = true, lsp_fallback = true })
  else
    vim.lsp.buf.format({ async = true })
  end
end, { desc = "Format Buffer" })

map("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line Diagnostics" })

map("n", "<leader>uW", function()
  vim.wo.wrap = not vim.wo.wrap
end, { desc = "Toggle Wrap" })

map("n", "<leader>us", function()
  vim.opt_local.spell = not vim.opt_local.spell:get()
end, { desc = "Toggle Spell" })

map("v", "J", ":m '>+1<cr>gv=gv", { desc = "Move Selection Down", silent = true })
map("v", "K", ":m '<-2<cr>gv=gv", { desc = "Move Selection Up", silent = true })
