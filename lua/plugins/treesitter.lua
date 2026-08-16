vim.pack.add({
    'nvim-treesitter/nvim-treesitter',
})

require('nvim-treesitter').install({ 'c', 'python', 'lua', 'java', 'json', 'yaml', 'toml', 'markdown' })
