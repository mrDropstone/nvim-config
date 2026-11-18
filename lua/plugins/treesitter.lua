return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter").setup({
           ensure_installed = {"c", "lua", "vim", "c++", "python", "json", "vimdoc"},
	   auto_install = true,
	   highlight = {enable = true},
	   indent = {enable = true},
	})
    end,
}

