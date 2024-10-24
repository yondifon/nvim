-- Display buffers as tabs.

return {
    'akinsho/bufferline.nvim',
    after = "catppuccin",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require("bufferline").setup {
            options = {
                mode = 'buffers',
                show_close_icon = false,
                tab_size = 0,
                max_name_length = 25,
                hover = {
                    enabled = true,
                    delay = 0,
                    reveal = { "close" },
                },
                separator_style = 'slant',
            },
        }
    end, 
}
