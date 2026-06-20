return {
  'stevearc/oil.nvim',
  lazy = false,
  opts = {
    default_file_explorer = true,
    delete_to_trash = true,
    view_options = {
      show_hidden = true,
    },
    float = {
      border = 'rounded',
    },
  },
  keys = {
    { '-', '<cmd>Oil<CR>', desc = 'Open parent directory' },
  },
}
