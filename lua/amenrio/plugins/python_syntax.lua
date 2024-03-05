return{
    "wookayin/semshi",
    ft = "python",
    init = function()
        vim.g["semshi#error_sign"] = false
        vim.g["semshi#simplify_markup"] = false
        vim.g["semshi#mark_selected_nodes"] = false
        vim.g["semshi#update_delay_factor"] = 0.001

        -- This autocmd must be defined in init to take effect
        vim.api.nvim_create_autocmd({ "VimEnter", "ColorScheme" }, {
            group = vim.api.nvim_create_augroup("SemanticHighlight", {}),
            callback = function()
                -- Only add style, inherit or link to the LSP's colors
                vim.cmd([[
                highlight! semshiGlobal gui=italic
                highlight! link semshiImported @none
                highlight! link semshiParameter @lsp.type.parameter
                highlight! link semshiParameterUnused DiagnosticUnnecessary
                highlight! link semshiBuiltin @function.builtin
                highlight! link semshiAttribute @field
                highlight! link semshiSelf @lsp.type.selfKeyword
                highlight! link semshiUnresolved @lsp.type.unresolvedReference
                highlight! link semshiFree @none
                ]])
            end,
        })
    end,
    build = ":UpdateRemotePlugins",
}
