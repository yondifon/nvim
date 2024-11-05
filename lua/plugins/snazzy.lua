return {
    "alexwu/nvim-snazzy",
    dependencies = { "rktjmp/lush.nvim" },
    lazy = true,
    priority = 1000,
    config = function()
        vim.cmd.colorscheme("snazzy")
    end
}
