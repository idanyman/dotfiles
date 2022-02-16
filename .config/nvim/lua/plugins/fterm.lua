require('FTerm')
local map = require('keybinds').map

map {'n', '<C-i>', ':lua require("FTerm").toggle()<cr>'}
map {'t', '<C-i>', '<C-\\><C-n>:lua require("FTerm").toggle()<cr>'}
