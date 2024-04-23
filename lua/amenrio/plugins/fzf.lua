return{
    "ibhagwan/fzf-lua",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    cmd = { "FzfLua" },
    config = function ()
        require('fzf-lua').setup({})
    end,
    keys = {
        {"<C-\\>", "<cmd>lua require('fzf-lua').buffers()<CR>",mode = "n"},
        {"<C-p>", "<cmd>lua require('fzf-lua').files()<CR>",mode = "n"},
        {"<leader>lg", "<cmd>lua require('fzf-lua').live_grep()<CR>",mode = "n"},
        {"<leader>lw", "<cmd>lua require('fzf-lua').grep_cword()<CR>",mode = "n"},
        {"<leader>lb", "<cmd>lua require('fzf-lua').lgrep_curbuf()<CR>",mode = "n"},
        -- {"<leader>fa", "<cmd>lua require('fzf-lua').args()<CR>",mode = "n"},
        -- {"<leader>ft", "<cmd>lua require('fzf-lua').tmux_buffers()<CR>",mode = "n"},
    }
}
