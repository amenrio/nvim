return{
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        opts = function(_, opts)
            if type(opts.ensure_installed) == "table" then
                vim.list_extend(opts.ensure_installed, {
                    "lua",
                    "ninja",
                    "python",
                    "rst",
                    "toml",
                    "bash",
                    "json",
                    "vim",
                    "vimdoc",
                })
            end
        end,
}
