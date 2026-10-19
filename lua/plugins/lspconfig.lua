return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ols = {
          mason = false,
          cmd = { "/opt/ols/ols" },
          settings = {
            odin_command = "/opt/Odin/odin",
          },
        },
      },
    },
  },
}
