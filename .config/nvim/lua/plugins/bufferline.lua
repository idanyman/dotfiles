local map = require('keybinds').map

require('bufferline').setup {
  options = {
    right_mouse_command = "vertical sbuffer %d",
    offsets = {
      {
        filetype = "NvimTree",
	text = "File Explorer",
	highlight = "Directory",
	text_align = "left"
      }
    }
  }
}

-- Keybinds
map {'n', 'g.', ':BufferLineCycleNext<cr>'}
map {'n', 'g,', ':BufferLineCyclePrev<cr>'}
map {'n', 'gb', ':BufferLinePick<cr>'}
