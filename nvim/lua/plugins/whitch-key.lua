return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  opts = {
    preset = 'helix',
    delay = 0,
    icons = {
      mappings = false,
      keys = {
        Up = '↑', Down = '↓', Left = '←', Right = '→',
        Tab = 'Tab', BS = 'BS', Esc = 'Esc', CR = 'CR',
        Space = 'SPC', C = 'C-', M = 'M-', S = 'S-',
      },
    },
    show_help = false,
    filter = function(mapping)
      return mapping.desc and mapping.desc ~= ''
    end,
    spec = {
      -- groups
      { 'g',           group = 'goto / comment' },
      { 'gc',          group = 'comment',        mode = { 'n', 'v' } },
      { '<leader>f',   group = 'find' },
      { '<leader>l',   group = 'lsp' },
      { '<leader>w',   group = 'window' },
      { '<leader>g',   group = 'git' },
      { '<leader>h',   group = 'harpoon' },
      { '<leader>x',   group = 'trouble' },

      -- find
      { '<leader>ff',  desc = 'Find files' },
      { '<leader>fb',  desc = 'Find buffers' },
      { '<S-g>',       desc = 'Live grep' },
      { '<leader>d',   desc = 'Diagnostics' },

      -- comment (built-in nvim 0.10+)
      { 'gcc',         desc = 'Comment line' },
      { 'gbc',         desc = 'Comment block' },

      -- lsp / actions
      { '<S-r>',       desc = 'LSP: Rename' },
      { '<S-K>',       desc = 'LSP: Hover' },
      { '<Tab>',       desc = 'LSP: Code action', mode = { 'n', 'x' } },

      -- navigation
      { 'gd',          desc = 'LSP: Go to definition' },
      { 'gr',          desc = 'LSP: Go to references' },
      { 'gi',          desc = 'LSP: Go to implementation' },
      { 'gD',          desc = 'LSP: Go to declaration' },

      -- git
      { ']g',          desc = 'Git: Next hunk' },
      { '[g',          desc = 'Git: Prev hunk' },
      { '<leader>gs',  desc = 'Git: Stage hunk' },
      { '<leader>gr',  desc = 'Git: Reset hunk' },
      { '<leader>gp',  desc = 'Git: Preview hunk' },
      { '<leader>gb',  desc = 'Git: Blame line' },

      -- harpoon
      { '<leader>ha',  desc = 'Harpoon: Add file' },
      { '<leader>hh',  desc = 'Harpoon: Menu' },
      { '<leader>1',   desc = 'Harpoon: File 1' },
      { '<leader>2',   desc = 'Harpoon: File 2' },
      { '<leader>3',   desc = 'Harpoon: File 3' },
      { '<leader>4',   desc = 'Harpoon: File 4' },

      -- trouble
      { '<leader>x',   desc = 'Trouble: Workspace diagnostics' },
      { '<leader>xd',  desc = 'Trouble: Document diagnostics' },
      { '<leader>xs',  desc = 'Trouble: Symbols' },
      { '<leader>xl',  desc = 'Trouble: LSP' },

      -- splits
      { '<leader>wv',  desc = 'Vertical split' },
      { '<leader>ws',  desc = 'Horizontal split' },
      { '<leader>wq',  desc = 'Close split' },
      { '<leader>wo',  desc = 'Close others' },

      -- focus (f + arrows)
      { 'f<Left>',     desc = 'Focus left' },
      { 'f<Down>',     desc = 'Focus down' },
      { 'f<Up>',       desc = 'Focus up' },
      { 'f<Right>',    desc = 'Focus right' },

      -- resize (fr + arrows)
      { 'fr<Left>',    desc = 'Resize left' },
      { 'fr<Down>',    desc = 'Resize down' },
      { 'fr<Up>',      desc = 'Resize up' },
      { 'fr<Right>',   desc = 'Resize right' },

      -- misc
      { 'U',           desc = 'Redo' },
    },
  },
}
