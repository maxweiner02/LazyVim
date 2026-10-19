return {
  {
    "folke/snacks.nvim",
    config = function(_, opts)
      require("snacks").setup(opts)

      -- Snacks picker highlights with Dracula Pro colors for better contrast
      vim.api.nvim_set_hl(0, "SnacksPickerCursor", { bg = "#9580FF", fg = "#22212C", bold = true })
      vim.api.nvim_set_hl(0, "SnacksPickerMatch", { fg = "#80FFEA", bold = true })
      vim.api.nvim_set_hl(0, "SnacksPickerDir", { fg = "#9580FF" })
      vim.api.nvim_set_hl(0, "SnacksPickerFile", { fg = "#F8F8F2" })

      -- Fix gitignored/hidden files visibility (uses comment color)
      vim.api.nvim_set_hl(0, "SnacksPickerPathHidden", { fg = "#7970A9", italic = true })

      -- Git status highlights
      vim.api.nvim_set_hl(0, "SnacksPickerGitStatusUntracked", { fg = "#8AFF80" }) -- Green for new files
    end,
  },
}
