return {
  'lewis6991/gitsigns.nvim',
  opts = {
    signs = {
      add          = { text = '│' },
      change       = { text = '│' },
      delete       = { text = '_' },
      topdelete    = { text = '‾' },
      changedelete = { text = '~' },
    },
    on_attach = function(bufnr)
      local gs = require('gitsigns')
      local map = function(keys, func, desc)
        vim.keymap.set('n', keys, func, { buffer = bufnr, desc = 'Git: ' .. desc })
      end

      map(']g', gs.next_hunk, 'Next hunk')
      map('[g', gs.prev_hunk, 'Prev hunk')
      map('<leader>gs', gs.stage_hunk, 'Stage hunk')
      map('<leader>gr', gs.reset_hunk, 'Reset hunk')
      map('<leader>gp', gs.preview_hunk, 'Preview hunk')
      map('<leader>gb', gs.blame_line, 'Blame line')
    end,
  },
}
