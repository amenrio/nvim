return{
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    config = function()
        local harpoon = require("harpoon")

        local wk = require("which-key")

        wk.register({
            a = { function() harpoon:list():append() end, "Add current file to harpoon buffer" },
        }, { prefix = "<leader>" })
        vim.keymap.set('n', '<C-e>', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
        vim.keymap.set('n', '<C-h>', function() harpoon:list():select(1) end)
        vim.keymap.set('n', '<C-j>', function() harpoon:list():select(2) end)
        vim.keymap.set('n', '<C-k>', function() harpoon:list():select(3) end)
        vim.keymap.set('n', '<C-l>', function() harpoon:list():select(4) end)
    end

}
