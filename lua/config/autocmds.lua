-- Autocmds are automatically loaded on the VeryLazy event.
-- LazyVim defaults: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua

local group = vim.api.nvim_create_augroup("codex_user_config", { clear = true })

vim.api.nvim_create_autocmd("TextYankPost", {
  group = group,
  desc = "Highlight yanked text",
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 150 })
  end,
})

vim.api.nvim_create_autocmd("BufWritePre", {
  group = group,
  desc = "Create parent directories before saving new files",
  callback = function(event)
    local dir = vim.fn.fnamemodify(event.file, ":p:h")
    if dir ~= "" and vim.fn.isdirectory(dir) == 0 then
      vim.fn.mkdir(dir, "p")
    end
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = group,
  desc = "Use prose settings for writing buffers",
  pattern = { "gitcommit", "markdown", "text" },
  callback = function()
    vim.opt_local.conceallevel = 2
    vim.opt_local.linebreak = true
    vim.opt_local.spell = true
    vim.opt_local.wrap = true
  end,
})
