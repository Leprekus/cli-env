vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex) -- opens explorer with spacebar on normal mode


-- telescope.lua:

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function() 

	builtin.grep_string({ search = vim.fn.input('Grep > ') })
end) -- project search

vim.api.nvim_set_keymap('v', '<leader>y', '"+y', { noremap = true, silent = true }) -- copy to clipboard
vim.api.nvim_set_keymap('i', 'qq', '<Esc>', { noremap = true, silent = true }) -- I to N mode
