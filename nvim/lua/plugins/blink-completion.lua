return {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets' },
  version = '1.*',
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = {
      preset = 'none',
      ['<Tab>'] = { 'accept', 'fallback' },
      ['<CR>'] = { 'accept', 'fallback' },
      ['<Up>'] = { 'select_prev', 'fallback' },
      ['<Down>'] = { 'select_next', 'fallback' },
      ['<Escape>'] = { 'fallback' },
    },
    appearance = {
      nerd_font_variant = 'mono'
    },
    completion = {
      documentation = { auto_show = true },
      list = {
        selection = {
          preselect = true,
          auto_insert = false,
        },
      },
      menu = {
        border = 'none',
        winblend = 5,
        scrollbar = false,
      },
    },
    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" }
}
