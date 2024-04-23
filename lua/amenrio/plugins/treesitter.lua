return{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "lua",
                "ninja",
                "python",
                "rst",
                "toml",
                "bash",
                "json",
                "vim",
                "vimdoc",
            },
        })
    end,
}
