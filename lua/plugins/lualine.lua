-- Status line

return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'arkav/lualine-lsp-progress',
        'nvim-tree/nvim-web-devicons',
    },
    opts = {
        options = {
            section_separators = '',
            component_separators = '',
            globalstatus = true,
        },
        sections = {
            lualine_a = { 'mode', },
            lualine_b = { 'branch', },
            lualine_c = {},
            lualine_x = {},
            lualine_y = {},
            lualine_z = {
                'searchcount',
                'selectioncount',
                'location',
            },
        },
    },
}
