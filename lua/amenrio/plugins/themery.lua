return {
    'zaldih/themery.nvim',
    cmd = 'Themery',
    config = function()
        local status_ok, themery = pcall(require, 'themery')
        if not status_ok then
            return
        end

        themery.setup({
            themes = {
                {
                    name = 'catppuccin',
                    colorscheme = 'catppuccin',
                },
                {
                    name = 'tokyonight',
                    colorscheme = 'tokyonight'
                },
            },
            themeConfigFile = '~/.config/nvim/lua/amenrio/plugins/colorschemes.lua',
            livePreview = true,
        })
    end
}
