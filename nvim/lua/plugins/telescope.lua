return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  config = function()
    local telescope = require('telescope')
    local actions = require('telescope.actions')
    local builtin = require('telescope.builtin')

    telescope.setup({
      defaults = {
        preview = {
          treesitter = false,
        },
        mappings = {
          i = {
            ['<C-w>'] = actions.delete_buffer,
            ["<C-h>"] = "which_key"
          },
        },
      },
      extensions = {
        fzf = {}
      }
    })
    telescope.load_extension('fzf')

    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find buffers' })
    vim.keymap.set('n', '<S-g>', builtin.live_grep, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>d', builtin.diagnostics, { desc = 'Telescope diagnostics' })
  end
}
