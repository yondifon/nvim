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
            require("zen-mode").toggle()
        end)
    end
}
