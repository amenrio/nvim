return{
    "ibhagwan/fzf-lua",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    cmd = { "FzfLua" },
    config = function ()
        require('fzf-lua').setup({})
    end,
    keys = {
        {"<C-e>", "<cmd>lua require('fzf-lua').buffers()<CR>",mode = "n"},
        {"<C-p>", "<cmd>lua require('fzf-lua').files()<CR>",mode = "n"},
        {"<leader>ll", "<cmd>lua require('fzf-lua').live_grep()<CR>",mode = "n"},
        {"<leader>lw", "<cmd>lua require('fzf-lua').grep_cword()<CR>",mode = "n"},
        {"<leader>lb", "<cmd>lua require('fzf-lua').lgrep_curbuf()<CR>",mode = "n"},
        -- LSP
        {"<leader>lsp", "<cmd>lua require('fzf-lua').lsp_finder()<CR>",mode = "n"},
        {"<leader>lgr", "<cmd>lua require('fzf-lua').lsp_references()<CR>",mode = "n"},
        {"<leader>lgd", "<cmd>lua require('fzf-lua').lsp_definitions()<CR>",mode = "n"},
        {"<leader>lgD", "<cmd>lua require('fzf-lua').lsp_declarations()<CR>",mode = "n"},
        -- Misc
        {"<leader>lk", "<cmd>lua require('fzf-lua').keymaps()<CR>",mode = "n"},

    }
}
