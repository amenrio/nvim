return{
    'iamcco/markdown-preview.nvim',
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop"},
    ft = { "markdown" },
    build = function () vim.fn["mkdp#util#install"]() end,
    keys = {
        {"<leader>mm", "<cmd>MarkdownPreviewToggle<cr>", desc = "Markdown Preview Toggle"},
        {"<leader>ms", "<cmd>MarkdownPreview<cr>", desc = "Markdown Preview"},
        {"<leader>mS", "<cmd>MarkdownPreviewStop<cr>", desc = "Markdown Preview Stop"},
    }
}
