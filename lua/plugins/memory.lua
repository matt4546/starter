return {
  "Legion-ke/go-memory-visualizer.nvim",
  ft = "go",
  config = function()
    require("go-memory-visualizer").setup({
      -- Optional: customize settings
      default_architecture = "amd64",
      show_inline_annotations = true,
      highlight_padding = true,
    })
  end,
}
