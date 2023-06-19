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
    lazy = false,
    opts = { style = "moon" },
  },

  {
    "Mofiqul/dracula.nvim",
    lazy = false,
  },

  {
    "navarasu/onedark.nvim",
    lazy = false,
  },
}
