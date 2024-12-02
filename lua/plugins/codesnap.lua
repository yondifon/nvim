-- Code snapshots

return {
    "mistricky/codesnap.nvim",
    build = "make build_generator",
    keys = {
        { "<leader>cc", "<cmd>CodeSnap<cr>",     mode = "x", desc = "Save selected code snapshot into clipboard" },
        { "<leader>cs", "<cmd>CodeSnapSave<cr>", mode = "x", desc = "Save selected code snapshot in ~/Pictures" },
    },
    opts = {
        mac_window_bar = false,
        has_breadcrumbs = true,
        code_font_family = "Hack Nerd Font Mono",
        watermark = "",
        bg_color = "#252525"
    },
}
