-- File tree sidebar

return {
    'nvim-neo-tree/neo-tree.nvim',
    lazy = false,
    cmd = 'Neotree',
    keys = {
        { '<leader>n',  ':Neotree reveal toggle<CR>' },
        { '<leader>b',  ':Neotree reveal<CR>' },
        { '<leader>gs', ':Neotree reveal git_status<CR>' },
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        {
            's1n7ax/nvim-window-picker',
            opts = {
                filter_rules = {
                    autoselect_one = true,
                    bo = {
                        filetype = { 'neo-tree', "neo-tree-popup", "notify" },
                        buftype = { 'terminal', "quickfix" },
                    },
                },
            },
        },
    },
    opts = {
        default_component_configs = {
            name = {
                use_git_status_colors = false,
                highlight_opened_files = true,
            },
        },
        filesystem = {
            hijack_netrw_behavior = "open_current",
            filtered_items = {
                hide_dotfiles = false,
                hide_by_name = { ".git", },
            },
            follow_current_file = {
                enabled = true,
                leave_dirs_open = true
            },
            group_empty_dirs = false
        },
    },
}
