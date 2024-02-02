return{
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
        require("dashboard").setup {}
    end,
    opts = function()
        local logo = [[
        █████╗ ███╗   ██╗██████╗ ██████╗ ███████╗███████╗   ███╗   ███╗███████╗███╗   ██╗██████╗ ███████╗███████╗
        ██╔══██╗████╗  ██║██╔══██╗██╔══██╗██╔════╝██╔════╝   ████╗ ████║██╔════╝████╗  ██║██╔══██╗██╔════╝╚══███╔╝
        ███████║██╔██╗ ██║██║  ██║██████╔╝█████╗  ███████╗   ██╔████╔██║█████╗  ██╔██╗ ██║██║  ██║█████╗    ███╔╝ 
        ██╔══██║██║╚██╗██║██║  ██║██╔══██╗██╔══╝  ╚════██║   ██║╚██╔╝██║██╔══╝  ██║╚██╗██║██║  ██║██╔══╝   ███╔╝  
        ██║  ██║██║ ╚████║██████╔╝██║  ██║███████╗███████║██╗██║ ╚═╝ ██║███████╗██║ ╚████║██████╔╝███████╗███████╗
        ]]

        logo = string.rep("\n", 8) .. logo .. "\n\n"

        local opts = {
            theme = "doom",
            hide = {
                -- this is taken care of by lualine
                -- enabling this messes up the actual laststatus setting after loading a file
                statusline = false,
            },
        } 
        return opts
    end,
}
