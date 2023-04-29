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

  -- {
  --   "catppuccin/nvim",
  --   config = function()
  --       require("catppuccin").setup {}
  --   end
  -- },
  {
    "navarasu/onedark.nvim",
    as = "onedark",
    config = function() require("onedark").setup { style = "darker" } end,
  },
}
