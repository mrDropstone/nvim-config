return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000, -- Ensures the theme loads first
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- Options: "latte", "frappe", "macchiato", "mocha"
      auto_integrations = true, -- Automatically styles installed plugins
    })

    -- Apply the colorscheme
    vim.cmd.colorscheme("catppuccin")
  end,
}

