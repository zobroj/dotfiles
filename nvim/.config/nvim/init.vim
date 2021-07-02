let mapleader = "\<Space>"
set nomodeline
set mouse=a

" BUFFERS
" list
nnoremap <Leader>b :buffers!<cr>:buffer<Space>
" next
nnoremap <Leader>n :w<Bar>bn<cr>
vnoremap <Leader>n <Esc>:w<Bar>bn<cr>
" previous
nnoremap <Leader>p :w<Bar>bp<cr>
vnoremap <Leader>p <Esc>:w<Bar>bp<cr>

" DISPLAY
set cursorline
set number
"set list "show hidden chars
set tabstop=2
set shiftwidth=2

" FILE
" save
cnoremap <C-s> <C-u>write<cr>
inoremap <C-s> <Esc>:write<cr>
nnoremap <C-s> :write<cr>

" CONFIGURATION
" edit
nnoremap <Leader>ce :split $HOME/.config/nvim/init.vim<CR>
" source
nnoremap <Leader>cs :source $HOME/.config/nvim/init.vim<CR>

