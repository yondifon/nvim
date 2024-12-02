-- Testing helper

return {
    "nvim-neotest/neotest",
    dependencies = {
        "marilari88/neotest-vitest",
        "nvim-lua/plenary.nvim",
        'V13Axel/neotest-pest',
        "nvim-neotest/nvim-nio",
        "antoinemadec/FixCursorHold.nvim",
        "nvim-treesitter/nvim-treesitter",
        "nvim-neotest/neotest-plenary",
        "olimorris/neotest-phpunit",
    },
    config = function()
        local neotest = require("neotest")
        neotest.setup({
            adapters = {
                require('neotest-pest'),
                require("neotest-phpunit")({
                    root_ignore_files = { "tests/Pest.php" }
                }),
                require("neotest-vitest"),
                require("neotest-plenary")
            }
        })
        -- Run the nearest test
        vim.keymap.set('n', '<leader>tn', function() neotest.run.run() end)

        -- Run all tests in the current file
        vim.keymap.set('n', '<leader>tf', function() neotest.run.run(vim.fn.expand("%")) end)

        -- Run the last test
        vim.keymap.set('n', '<leader>tl', function() neotest.run.run_last() end)

        -- Toggle test summary window
        vim.keymap.set('n', '<leader>ts', function() neotest.summary.toggle() end)

        -- Toggle test output panel
        vim.keymap.set('n', '<leader>to', function() neotest.output_panel.toggle() end)
    end,
}
