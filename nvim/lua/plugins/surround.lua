return {
  "kylechui/nvim-surround",
  version = "*",
  event = "VeryLazy",
  opts = {
    -- Add options
  },
  config = function(_, args)
    require("nvim-surround").setup(args)
  end
}
