return{
    {
        'echasnovski/mini.clue',
        version = false,
        config = function ()
            require('mini.clue').setup()
        end
    },
    {
        'echasnovski/mini.surround',
        version = false,
        config = function ()
            require('mini.surround').setup()
        end
    },
    {
        'echasnovski/mini.starter',
        version = false,
        config = function ()
            require('mini.starter').setup()
        end
    },
    -- {
    --     'echasnovski/mini.comment',
    --     version = false,
    --     config = function ()
    --         require('mini.comment').setup()
    --     end
    -- },
}
