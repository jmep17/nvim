-- Options are automatically loaded before lazy.nvim startup.
-- LazyVim defaults: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

vim.g.lazydev_enabled = true
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

local opt = vim.opt

opt.confirm = true
opt.cursorline = true
opt.expandtab = true
opt.fillchars = { eob = " " }
opt.ignorecase = true
opt.inccommand = "split"
opt.list = true
opt.listchars = {
  tab = "> ",
  trail = ".",
  extends = ">",
  precedes = "<",
  nbsp = "+",
}
opt.number = true
opt.pumheight = 12
opt.relativenumber = true
opt.scrolloff = 8
opt.shiftround = true
opt.shiftwidth = 2
opt.sidescrolloff = 8
opt.signcolumn = "yes"
opt.smartcase = true
opt.smartindent = true
opt.smoothscroll = true
opt.splitbelow = true
opt.splitright = true
opt.tabstop = 2
opt.termguicolors = true
opt.timeoutlen = 350
opt.undofile = true
opt.undolevels = 10000
opt.updatetime = 200
opt.wrap = true
