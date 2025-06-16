return {
    'stevearc/conform.nvim',
    opts = {
        formatters_by_ft = {
            php = { "pint" },
            javascript = { "prettier", stop_after_first = true },
            typescript = { "prettier", stop_after_first = true },
            json = { "prettier", stop_after_first = true },
            lua = { "lua-format", stop_after_first = true },
            typescriptreact = { "prettier", stop_after_first = true },
            blade = { "blade-formatter", stop_after_first = true },
        },
        format_on_save = {
            -- These options will be passed to conform.format()
            timeout_ms = 1000,
            lsp_format = "fallback",
        },
    },
}
