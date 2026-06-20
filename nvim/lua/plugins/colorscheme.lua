return {
  'datsfilipe/min-theme.nvim',
  lazy = false,
  priority = 1000,
  opts = {
    theme = 'dark',
    transparent = true,
    italics = {
      comments = true,
      keywords = true,
      functions = true,
      strings = true,
      variables = true,
    },
    overrides = {}
  },
  config = function(_, opts)
    require('min-theme').setup(opts)
    ---@diagnostic disable-next-line: undefined-global
    vim.cmd([[colorscheme min-theme]])
  end
}

