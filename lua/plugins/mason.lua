return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {
      -- Optional: list servers to auto-install
      ensure_installed = { "lua_ls", "clangd", "pyright" },
    },
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig", -- Loaded only for default server configs; no opts or config needed
    },
  },
}

