require('plugins')
require('bufferline').setup{}

local map = require('keybinds').map

vim.g.mapleader = ' '

-- Neovide configuration
vim.opt.guifont = 'FiraCode Nerd Font:h13'
vim.opt.termguicolors = true

vim.cmd('colorscheme nord')
vim.cmd('set shell=/bin/zsh')
vim.cmd('language en_US')

-- Show line numbers
vim.wo.number = true

