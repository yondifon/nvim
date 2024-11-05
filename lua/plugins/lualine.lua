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
            theme = 'iceberg',
        },
        sections = {
            lualine_a = {
                'mode',
            },
            lualine_b = {
                'branch',
                {
                    'diff',
                    symbols = { added = ' ', modified = ' ', removed = ' ' },
                },
                function()
                    return '󰅭 ' .. vim.pesc(tostring(#vim.tbl_keys(vim.lsp.lsp_get_clients())) or '')
                end,
            },
            lualine_c = {
                'filename',
                'fileformat',
            },
            lualine_x = {
                {
                    require("lazy.status").updates,
                    cond = require("lazy.status").has_updates,
                    color = { fg = "#ff9e64" },
                },
            },
            lualine_y = {
                'filetype',
                -- 'encoding',
                '(vim.bo.expandtab and "␠ " or "⇥ ") .. vim.bo.shiftwidth',
            },
            lualine_z = {
                'searchcount',
                'selectioncount',
                'location',
                'progress',
            },
        },
    },
}
