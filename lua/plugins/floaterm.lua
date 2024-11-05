--- Floating terminal

return {
    'voldikss/vim-floaterm',
    keys = {
        { '<C-j>', ':FloatermToggle<CR>' },
        { '<C-j>', '<Esc>:FloatermToggle<CR>',       mode = 'i' },
        { '<C-j>', '<C-\\><C-n>:FloatermToggle<CR>', mode = 't' },
    },
    cmd = { 'FloatermToggle' },
    init = function()
        vim.g.floaterm_width = 0.8
        vim.g.floaterm_height = 0.8
    end,
}
