return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  opts = {
    ensure_installed = { 'go', 'zig', 'lua', 'ocaml', 'markdown', 'markdown_inline' },
    highlight = { enable = true },
    indent = { enable = true },
  },
  config = function(_, opts)
    require('nvim-treesitter').setup(opts)
  end,
}
