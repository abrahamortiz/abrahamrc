vim.pack.add { 'https://github.com/folke/todo-comments.nvim' }

require('todo-comments').setup { signs = false }

vim.keymap.set('n', '<leader>st', '<CMD>TodoFzfLua<CR>', { desc = '[S]earch [T]odo comments' })
