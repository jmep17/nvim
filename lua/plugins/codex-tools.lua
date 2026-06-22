local function extend_unique(list, items)
  list = list or {}
  for _, item in ipairs(items) do
    if not vim.tbl_contains(list, item) then
      table.insert(list, item)
    end
  end
  return list
end

return {
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = extend_unique(opts.ensure_installed, {
        "basedpyright",
        "bash-language-server",
        "eslint_d",
        "json-lsp",
        "lua-language-server",
        "marksman",
        "prettierd",
        "shellcheck",
        "shfmt",
        "stylua",
        "vtsls",
        "yaml-language-server",
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = extend_unique(opts.ensure_installed, {
        "bash",
        "css",
        "diff",
        "fish",
        "gitignore",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
        "yaml",
      })
    end,
  },
}
