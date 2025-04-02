-- Fuzzy finder

return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        'nvim-telescope/telescope-live-grep-args.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' },
    },
    keys = {
        { '<leader>p', function() require('telescope.builtin').find_files() end },
        -- { '<leader>p', function() require('telescope.builtin').find_files({ no_ignore = true, prompt_title = 'All Files' }) end },
        { '<leader>o', function() require('telescope.builtin').buffers() end },
        { '<leader>O', function() require('telescope.builtin').oldfiles() end },
        { '<leader>g', function() require('telescope.builtin').git_files() end },
        { '<leader>f', function()
            require('telescope').extensions.live_grep_args.live_grep_args({
                vimgrep_arguments = {
                    "rg",
                    "--hidden",
                    "-L",
                    "--color=never",
                    "--sort=path",
                    "--no-heading",
                    "--with-filename",
                    "--line-number",
                    "--column",
                    "--smart-case",
                }
            })
        end },
        { '<leader>F', function()
            require('telescope').extensions.live_grep_args.live_grep_args({
                vimgrep_arguments = {
                    "rg",
                    "--hidden",
                    "--no-ignore",
                    "-L",
                    "--color=never",
                    "--sort=path",
                    "--no-heading",
                    "--with-filename",
                    "--line-number",
                    "--column",
                    "--smart-case",
                },
            })
        end },
        { '<leader>h', function() require('telescope.builtin').help_tags() end },
        { '<leader>s', function() require('telescope.builtin').lsp_document_symbols() end },
    },
    config = function()
        local actions = require('telescope.actions')

        require('telescope').setup({
            defaults = {
                sorting_strategy = 'ascending',
                mappings = {
                    i = {
                        ['<C-Down>'] = actions.cycle_history_next,
                        ['<C-Up>'] = actions.cycle_history_prev,
                    },
                },
                file_ignore_patterns = { '.git/' },
            },
            extensions = {
                live_grep_args = {
                    mappings = {
                        i = {
                            ["<C-k>"] = require("telescope-live-grep-args.actions").quote_prompt(),
                            ["<C-space>"] = actions.to_fuzzy_refine,
                        },
                    },
                },
            },
            pickers = {
                find_files = {
                    hidden = true,
                    sort_lastused = true,
                },
                buffers = {
                    sort_lastused = true,
                    initial_mode = "normal",
                },
                oldfiles = {
                    prompt_title = 'History',
                    sort_lastused = true,
                    only_cwd = true,
                    initial_mode = "normal",
                },
                git_files = {
                    initial_mode = "normal"
                },
                lsp_references = {
                    previewer = false,
                    sort_lastused = true,
                },
                lsp_definitions = {
                    previewer = false,
                    sort_lastused = true,
                },
                lsp_document_symbols = {
                    symbol_width = 55,
                    sort_lastused = true,
                },
            },
        })

        require('telescope').load_extension('fzf')
    end,
}
