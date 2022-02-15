local map = require('keybinds').map

local center_dropdown = {
  path_display = { 'smart' },
  theme = 'dropdown',
  layout_config = {
    center = {
      width = 120,
    },
  },
}

local cursor = {
  layout_strategy = 'cursor',
  sorting_strategy = 'ascending',
  layout_config = {
    cursor = {
      width = 60,
      height = 8,
    }
  }
}

require('telescope').setup({
  pickers = {
    lsp_references = center_dropdown,
    lsp_definitions = vim.tbl_extend('error', center_dropdown, {
      jump_type = 'never',
    }),
    lsp_code_actions = cursor,
    lsp_range_code_actions = cursor,
    lsp_document_diagnostics = center_dropdown,
    lsp_document_symbols = center_dropdown,
    lsp_dynamic_workspace_symbols = center_dropdown,
    live_grep = center_dropdown,
    buffers = center_dropdown,
    registers = center_dropdown,
    find_files = center_dropdown,
    git_files = center_dropdown
  },
  defaults = {
    path_display = {
      "shorten",
      "absolute",
    },
  }
})

-- Keybinds
map {'n', '<leader>ff', ':Telescope git_files<cr>'}
map {'n', '<leader>fb', ':Telescope buffers<cr>'}
map {'n', '<leader>fg', ':Telescope live_grep<cr>'}

