return {
  'folke/trouble.nvim',
  cmd = 'Trouble',
  keys = {
    { '<leader>x',  '<cmd>Trouble diagnostics toggle<cr>',                        desc = 'Trouble: Workspace diagnostics' },
    { '<leader>xd', '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',           desc = 'Trouble: Document diagnostics' },
    { '<leader>xs', '<cmd>Trouble symbols toggle<cr>',                            desc = 'Trouble: Symbols' },
    { '<leader>xl', '<cmd>Trouble lsp toggle<cr>',                                desc = 'Trouble: LSP' },
  },
  opts = {},
}
