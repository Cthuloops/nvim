local builtin = require('telescope.builtin')

-- Press space+pf to search all files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- Press CTRL+p to search git files
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- Searches files for a string, space+ps
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
