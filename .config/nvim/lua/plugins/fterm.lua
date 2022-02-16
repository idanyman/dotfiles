require('FTerm')
local map = require('keybinds').map

map {'n', '<C-t>', ':lua require("FTerm").toggle()<cr>'}
map {'t', '<C-t>', '<C-\\><C-n>:lua require("FTerm").toggle()<cr>'}
