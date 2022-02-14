local neogit = require('neogit')
local map = require('keybinds').map

neogit.setup {
  disable_signs = false,
  disable_hint = false,
  disable_context_highlighting = false,
  disable_commit_confirmation = false,
  auto_refresh = true,
  disable_builtin_notifications = false,
  use_magit_keybindings = false,
  commit_popup = {
      kind = 'split',
  },
  -- Change the default way of opening neogit
  kind = 'tab',
  -- customize displayed signs
  signs = {
    -- { CLOSED, OPENED }
    section = { '>', 'v' },
    item = { '>', 'v' },
    hunk = { '', '' },
  },
  integrations = {
    diffview = true  
  },
  -- Setting any section to `false` will make the section not render at all
  sections = {
    untracked = {
      folded = false
    },
    unstaged = {
      folded = false
    },
    staged = {
      folded = false
    },
    stashes = {
      folded = true
    },
    unpulled = {
      folded = true
    },
    unmerged = {
      folded = false
    },
    recent = {
      folded = true
    },
  },
}

-- Keybinds
map {'n', '<leader>gs', ':Neogit<cr>'}
map {'n', '<leader>gd', ':lua require("telescope.builtin").git_bcommits()<cr>'}
map {'n', '<leader>gl', ':lua require("telescope.builtin").git_commits()<cr>'}
map {'n', '<silent><leader>gb', ':Git blame<cr>'}
