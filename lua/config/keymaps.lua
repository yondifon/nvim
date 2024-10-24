-- Space is my leader.
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Clear search highlighting.
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>') 

-- Allow gf to open non-existent files.
vim.keymap.set('', 'gf', ':edit <cfile><CR>')


vim.keymap.set({'n', 'v'}, '<leader>r', vim.lsp.buf.rename)
