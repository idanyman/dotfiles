local map = require('keybinds').map

-- Keybinds
map {'n', '<leader>ff', ':Telescope find_files<cr>'}
map {'n', '<leader>fb', ':Telescope buffers<cr>'}
map {'n', '<leader>fg', ':Telescope live_grep<cr>'}

