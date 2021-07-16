" General Settings
set encoding=utf-8 mouse=a nomodeline nobackup nowritebackup splitbelow splitright wildmode=longest,list,full 

" DISPLAY
colorscheme gruvbox " seoul256
set termguicolors
set cursorline number
set list " show hidden chars

" DISPLAY - Background
set background=dark
"hi! Normal ctermbg=NONE guibg=NONE
"hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE

set path+=** 

" Status Line :so $VIMRUNTIME/syntax/hitest.vim
set statusline=
set statusline+=%#NonText#
set statusline+=%=
set statusline+=\ %f
set statusline+=\ 
set statusline+=%#CursorLineNr#
set statusline+=\ %y
set statusline+=\ %r
set statusline+=%#DiffText#
set statusline+=\ %l/%L[%c]

set tabstop=4 shiftwidth=4 softtabstop=4 autoindent smartindent noexpandtab


let mapleader = "\<Space>"

" <nop>
nnoremap Q <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>
nnoremap <Up> <nop>
nnoremap <Down> <nop>

" MOTIONS
cmap <C-a> <home>
cmap <C-d> <Del>
imap <C-d> <Del>
imap <C-u> <Nop>
imap <C-f> <right>
imap <C-a> <home>
imap <C-e> <end>

" Move - Highlighted
vnoremap K :move '<-2<CR>gv-gv
vnoremap J :move '>+1<CR>gv-gv

" Buffers - List
nnoremap <Leader>b :buffers!<cr>:buffer<Space>
" Buffers - Next
nnoremap <Leader>n :w<Bar>bn<cr>
vnoremap <Leader>n <Esc>:w<Bar>bn<cr>
" Buffers - Previous
noremap <Leader>p :w<Bar>bp<cr>
vnoremap <Leader>p <Esc>:w<Bar>bp<cr>

" FILE - save
cnoremap <C-s> <C-u>write<cr>
inoremap <C-s> <Esc>:write<cr>
nnoremap <C-s> :write<cr>

" Goyo
nnoremap <Leader><Enter> :Goyo<CR>

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

" Goyo
function! s:goyo_enter()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  endif
  set nocursorline
  set noshowmode
  set noshowcmd
  set scrolloff=999
  Limelight
  " ...
endfunction

function! s:goyo_leave()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  endif
  set cursorline
  set showmode
  set showcmd
  set scrolloff=5
  Limelight!
  " ...
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
