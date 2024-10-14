-- Display buffers as tabs.

local inactiveBg = {
    bg = { attribute = 'bg', highlight = 'BufferlineInactive' },
}

return {
    'akinsho/bufferline.nvim',
    after = "catppuccin",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require("bufferline").setup {
            options = {
                indicator = {
                    icon = ' ',
                },
                show_close_icon = false,
                tab_size = 0,
                max_name_length = 25,
                offsets = {
                    {
                        filetype = 'NvimTree',
                        text = '  Files',
                        highlight = 'StatusLine',
                        text_align = 'left',
                    },
                    {
                        filetype = 'neo-tree',
                        text = function()
                            return ' '..vim.fn.fnamemodify(vim.fn.getcwd(), ':~')
                        end,
                        highlight = 'StatusLineComment',
                        text_align = 'left',
                    },
                },
                hover = {
                    enabled = true,
                    delay = 0,
                    reveal = { "close" },
                },
                separator_style = 'slant',
            },
            highlights = require("catppuccin.groups.integrations.bufferline").get()
        }
    end, 
}
