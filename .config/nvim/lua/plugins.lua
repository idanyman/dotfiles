local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'

Plug 'tpope/vim-sensible'

Plug 'arcticicestudio/nord-vim'

Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'folke/which-key.nvim'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'akinsho/bufferline.nvim'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

Plug 'nvim-lualine/lualine.nvim'

Plug 'TimUntersberger/neogit'
vim.call('plug#end')

-- Plugin specific configuration
require('plugins.git')
require('plugins.lsp')
require('plugins.lualine')
require('plugins.nvim-tree')
require('plugins.telescope')
require('plugins.whichkey')
