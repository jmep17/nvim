return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = false,
      term_colors = true,
      integrations = {
        cmp = true,
        fzf = true,
        gitsigns = true,
        lsp_trouble = true,
        mason = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        neotree = true,
        noice = true,
        notify = true,
        telescope = true,
        treesitter = true,
        which_key = true,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    keys = {
      { "<leader>uz", "<cmd>ZenMode<cr>", desc = "Zen Mode" },
    },
    opts = {
      window = {
        backdrop = 0.88,
        width = 0.86,
        options = {
          number = false,
          relativenumber = false,
          signcolumn = "no",
        },
      },
      plugins = {
        gitsigns = { enabled = true },
        tmux = { enabled = false },
      },
    },
  },
  {
    "folke/twilight.nvim",
    cmd = "Twilight",
    keys = {
      { "<leader>uT", "<cmd>Twilight<cr>", desc = "Twilight" },
    },
    opts = {
      context = 12,
      dimming = {
        alpha = 0.25,
      },
    },
  },
  {
    "NvChad/nvim-colorizer.lua",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      user_default_options = {
        mode = "background",
        names = false,
        tailwind = true,
      },
    },
  },
}
