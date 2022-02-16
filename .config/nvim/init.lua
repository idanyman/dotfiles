require('plugins')

local map = require('keybinds').map

-- General configuration
vim.g.mapleader = ' '
vim.opt.mouse = 'a'
vim.opt.splitright = true
vim.cmd('colorscheme nord')
vim.cmd('set shell=/bin/zsh')
vim.cmd('language en_US')
vim.wo.number = true

-- Neovide configuration
vim.opt.guifont = 'FiraCode Nerd Font:h13'
vim.opt.termguicolors = true

-- General keybinds
-- Close buffer without closing window
map {'n', '<leader>q', ':bp<bar>sp<bar>bn<bar>bd<cr>'}

