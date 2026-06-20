local g = vim.g
local opt = vim.opt
local o = vim.o

g.mapleader = ' '
g.maplocalleader = ' '

opt.number = true
opt.statuscolumn = "%s%=%{v:lnum == line('.') ? v:lnum : ''}  "

o.mouse = 'a'
opt.fillchars = { eob = " " }

vim.schedule(function()
  o.clipboard = 'unnamedplus'
end)

o.breakindent = true
o.undofile = true
o.ignorecase = true
o.smartcase = true
o.signcolumn = 'yes'
o.timeoutlen = 300
o.splitright = true
o.splitbelow = true
o.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
o.inccommand = 'split'
o.cursorline = true
o.scrolloff = 10
o.confirm = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.softtabstop = 2

o.laststatus = 3
o.showcmd = false
o.statusline = table.concat({
  "%=",  -- spacer
  " %m", -- modified
  " %t", -- filename
  " %y", -- filetype
})

o.winborder = 'rounded'

opt.fixendofline = true
