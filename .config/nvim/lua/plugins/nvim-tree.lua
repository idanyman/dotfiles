local nvimtree = require('nvim-tree')
local map = require('keybinds').map

vim.api.nvim_set_var('nvim_tree_indent_markers', 1)

nvimtree.setup {
  auto_close = {
    enable = true
  },
  filters = {
    custom = {
      '.git',
      '.DS_Store'
    }
  },
  git = {
    enable = true,
    ignore = false,
  },
  view = {
    width = 30
  }
}

map {'n', '<C-b>', ':NvimTreeToggle<cr>'}
