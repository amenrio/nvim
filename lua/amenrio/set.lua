vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .."/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.cursorline = true

vim.opt.colorcolumn = "100"
vim.opt.textwidth = 100

vim.opt.filetype.plugin = "on"

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        local opts = {buffer = ev.buf}
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
        vim.keymap.set('n', '<leader>vwa', vim.lsp.buf.add_workspace_folder, opts)
        vim.keymap.set('n', '<leader>vwr', vim.lsp.buf.remove_workspace_folder, opts)
        vim.keymap.set('n', '<leader>vwl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts)
    end,
})

vim.g.python3_host_prog = "~/.config/nvim/venv/bin/python"
