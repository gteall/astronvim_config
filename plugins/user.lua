return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },

  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "moon" },
  },

  {
    "Mofiqul/dracula.nvim",
    lazy = true,
  },

  {
    "navarasu/onedark.nvim",
    lazy = true,
  },

  {
    "hrsh7th/nvim-cmp",
    mapping = {
      ["<C-o>"] = require("cmp").mapping(require("cmp").mapping.complete(), { "i", "c" }),
    },
  },
}
