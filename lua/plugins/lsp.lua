return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {},
        rust_analyzer = {},
        jsonls = {},
        tinymist = {},
        gleam = {},
        clangd = {},
        ruff = {},
        ruff_lsp = {},
        zls = {},
      },
    },
  },
}
