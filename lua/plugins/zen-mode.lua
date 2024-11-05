-- Lua
return {
    "folke/zen-mode.nvim",
    opts = {
        window = {
            width = 90,
            options = {
                number = true,         -- disable number column
                relativenumber = true, -- disable relative numbers
            },
        },

    },

    config = function()
        vim.keymap.set("n", "<leader>z", function()
            require('lualine').hide()

            require("zen-mode").toggle({
                on_close = function()
                    require('lualine').hide({ unhide = true })
                end,
            })
        end)
    end
}
