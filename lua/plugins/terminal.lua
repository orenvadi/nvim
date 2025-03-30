return {
  {
    "akinsho/toggleterm.nvim",
    opts = {
      open_mapping = [[<f7>]], -- Change to your preferred mapping if needed
      direction = "float", -- Use a floating window
      float_opts = {
        border = "rounded", -- You can also try "curved", "single", etc.
        width = math.floor(vim.o.columns * 0.8), -- 90% of the current width
        height = math.floor(vim.o.lines * 0.8), -- 90% of the current height
        winblend = 0, -- Transparency level (optional)
      },
    },
  },
}
