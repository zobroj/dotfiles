" SECURITY
set nomodeline " https://www.theregister.co.uk/2019/06/12/vim_remote_command_execution_flaw/
" TODO Vim private mode //vi.stackexchange.com/questions/834/prevent-vim-from-recording-events-for-certain-filetypes?lq=1 

let mapleader = "\<Space>"

" DISPLAY
colorscheme gruvbox " seoul256
set cursorline
set number
set list " show hidden chars

" TABS
set tabstop=2
set shiftwidth=2

" WINDOW Splits
set splitbelow " more natural split
set splitright " more natural split

" MOUSE
set mouse=a

" MOTIONS
cmap <C-a> <home>
cmap <C-d> <Del>
imap <C-d> <Del>
imap <C-u> <Nop>
imap <C-f> <right>
imap <C-a> <home>
imap <C-e> <end>

" BUFFERS
" list
nnoremap <Leader>b :buffers!<cr>:buffer<Space>
" next
nnoremap <Leader>n :w<Bar>bn<cr>
vnoremap <Leader>n <Esc>:w<Bar>bn<cr>
" previous
nnoremap <Leader>p :w<Bar>bp<cr>
vnoremap <Leader>p <Esc>:w<Bar>bp<cr>

" FILE
" save
cnoremap <C-s> <C-u>write<cr>
inoremap <C-s> <Esc>:write<cr>
nnoremap <C-s> :write<cr>

" Folds
" set foldmethod=manual
" set foldmarker={{{,}}}
" set foldlevel=0
" set foldlevelstart=-1

" CONFIGURATION
" edit
nnoremap <Leader>ce :split $HOME/.config/nvim/init.vim<CR>
" source
nnoremap <Leader>cs :source $HOME/.config/nvim/init.vim<CR>

" SNIPPETS
" =================
" Read an empty HTML template and move cursor to title 
" '-1' moves the line up
" use 'gf' to jump to file
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a
nnoremap ,dmod :-1read $HOME/.config/nvim/snippets/elixir.dmod<CR>ela
nnoremap ,def :-1read $HOME/.config/nvim/snippets/elixir.def<CR>ela
