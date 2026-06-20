return {
  'nvim-mini/mini.indentscope',
  version = false,
  opts = {
    draw = {
      delay = 50,
      animation = function() return 25 end,
      predicate = function(scope) return not scope.body.is_incomplete end,
      priority = 2,
    },
    mappings = {
      object_scope = 'ii',
      object_scope_with_border = 'ai',
      goto_top = '[i',
      goto_bottom = ']i',
    },
    options = {
      border = 'both',
      indent_at_cursor = true,
      n_lines = 10000,
      try_as_border = true
    },
    symbol = '╎',
  },
  config = function(_, opts)
    require('mini.indentscope').setup(opts)
    local hl = vim.api.nvim_get_hl(0, { name = 'Statement', link = false })
    vim.api.nvim_set_hl(0, 'MiniIndentscopeSymbol', { fg = hl.fg })
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'ocaml', 'ocamlinterface' },
      callback = function()
        vim.b.miniindentscope_disable = true
      end,
    })
  end,
}
