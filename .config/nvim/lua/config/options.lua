vim.g.mapleader = " "
vim.opt.swapfile = false
vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.expandtab =  true
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.textwidth = 0
vim.opt.wrap = false
vim.opt.list = true
vim.opt.listchars = "trail:·,tab:»-"
vim.opt.mouse = ""
vim.opt.encoding = "utf-8"
vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.startofline = false
vim.opt.termguicolors = true
vim.opt.numberwidth = 4                         -- set number column width
vim.opt.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
vim.opt.undofile=true                           -- persistent undo
vim.opt.timeoutlen=400                          -- faster whichkey window
vim.opt.lazyredraw = true                       -- don't redraw while executing macros/searches

vim.g.clipboard = {
  name = 'OSC 52',
  copy = {
    ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
  },
  paste = {
    ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
  },
}
