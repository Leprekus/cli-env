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

-- display nvim-lspconfig error messages
vim.api.nvim_set_keymap('n', '<space>e', ':lua vim.diagnostic.open_float(0, {scope="line"})<CR>', { noremap = true, silent = true })

-- nvim-tree
vim.keymap.set('n', '<leader><Tab>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- make nvim transparent
vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
