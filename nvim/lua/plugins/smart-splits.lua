return {
  'mrjones2014/smart-splits.nvim',
  lazy = false,
  config = function()
    local ss = require('smart-splits')

    -- Navigate (f + arrows)
    vim.keymap.set('n', 'f<Left>', ss.move_cursor_left, { desc = 'Focus left' })
    vim.keymap.set('n', 'f<Down>', ss.move_cursor_down, { desc = 'Focus down' })
    vim.keymap.set('n', 'f<Up>', ss.move_cursor_up, { desc = 'Focus up' })
    vim.keymap.set('n', 'f<Right>', ss.move_cursor_right, { desc = 'Focus right' })

    -- Navigate (leader)
    vim.keymap.set('n', '<leader>wh', ss.move_cursor_left, { desc = 'Move left' })
    vim.keymap.set('n', '<leader>wj', ss.move_cursor_down, { desc = 'Move down' })
    vim.keymap.set('n', '<leader>wk', ss.move_cursor_up, { desc = 'Move up' })
    vim.keymap.set('n', '<leader>wl', ss.move_cursor_right, { desc = 'Move right' })

    -- Resize (fr + arrows)
    vim.keymap.set('n', 'fr<Left>', ss.resize_left, { desc = 'Resize left' })
    vim.keymap.set('n', 'fr<Down>', ss.resize_down, { desc = 'Resize down' })
    vim.keymap.set('n', 'fr<Up>', ss.resize_up, { desc = 'Resize up' })
    vim.keymap.set('n', 'fr<Right>', ss.resize_right, { desc = 'Resize right' })

    -- Resize (leader)
    vim.keymap.set('n', '<leader>wH', ss.resize_left, { desc = 'Resize left' })
    vim.keymap.set('n', '<leader>wJ', ss.resize_down, { desc = 'Resize down' })
    vim.keymap.set('n', '<leader>wK', ss.resize_up, { desc = 'Resize up' })
    vim.keymap.set('n', '<leader>wL', ss.resize_right, { desc = 'Resize right' })

    -- Splits
    vim.keymap.set('n', '<leader>wv', '<cmd>vsplit<CR>', { desc = 'Vertical split' })
    vim.keymap.set('n', '<leader>ws', '<cmd>split<CR>', { desc = 'Horizontal split' })
    vim.keymap.set('n', '<leader>wq', '<cmd>close<CR>', { desc = 'Close split' })
    vim.keymap.set('n', '<leader>wo', '<cmd>only<CR>', { desc = 'Close others' })
  end,
}
