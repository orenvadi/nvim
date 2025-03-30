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
      },
    },
  },
}
