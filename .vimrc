
" Lightline
set laststatus=2
let g:lightline = {
\ 'colorscheme' : 'nord',
\ 'active': {
\   'left': [['mode', 'paste'], ['readonly', 'filename', 'modified']],
\ },
\ 'component_function': {
\   'filename': 'LightlineFilename',
\ }
\}

function! LightlineFilename()
  let root = fnamemodify(get(b:, 'git_dir'), ':h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction

" Syntax
nmap <leader>ss :syntax sync fromstart<cr>
nmap <leader>sw :set syntax=whitespace<cr>
nmap <leader>sh :set syntax=html<cr>
nmap <leader>sj :set syntax=javascript<cr>
nmap <leader>sp :set syntax=python<cr>
nmap <leader>sr :set syntax=ruby<cr>

" Tab size
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" NERDTree
let NERDTreeShowHidden = 1
nmap <leader>t :NERDTreeToggle<cr>

" fzf
nmap <leader>f :Files<cr>

" ag
let g:ackprg = 'ag --vimgrep'
nmap <leader>a :Ack!

" Clipboard
vmap <space>y "+y
nmap <space>yy "+yy
nmap <space>p "+p
nmap <space>P "+P

" Buffers
nmap <leader>bl :Buffers<cr>
nmap <leader>bd :bp<cr>:bd #<cr>
nmap <leader>bn :bn<cr>
nmap <leader>bp :bp<cr>
nmap <leader>b# :b #<cr>

" Easymotion
map <space>j <Plug>(easymotion-sol-j)
map <space>k <Plug>(easymotion-sol-k)
map <space>f <Plug>(easymotion-bd-f)

" GitGutter
map <leader>g :GitGutter<cr>
let g:gitgutter_max_signs = 900
let g:gitgutter_diff_args = '-w'

" No automatic <EOL> at the end of file
set noendofline
set nofixendofline

" Ale
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 0
let g:ale_javascript_eslint_use_global = 1
let g:ale_javascript_eslint_executable = 'eslint_d'

let g:ale_linters = {
\ 'javascript': ['eslint'],
\ 'typescript': ['eslint', 'tsserver']
\}

let g:ale_fixers = {
\ 'javascript': ['eslint'],
\ 'typescript': ['eslint'],
\}

nmap > :ALEFix<cr>