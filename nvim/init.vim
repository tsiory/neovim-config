" cannot code without the following
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=UTF-8
syntax on
set number
set relativenumber
set mouse=a
set noshowmode  " to get rid of thing like --INSERT--
set noshowcmd  " to get rid of display of last command
set shortmess+=F  " to get rid of the file name displayed in the command line bar

" only vim can do this
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set cursorline
set cursorcolumn

" open terminal
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>t :below 10sp term://$SHELL<cr>i
" hit <Escape> key to exit from terminal mode
:tnoremap <Esc> <C-\><C-n>

" use current file directory as a start to find file to edit
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map ,e :e <C-R>=expand("%:p:h") . "/" <CR>
map ,t :tabe <C-R>=expand("%:p:h") . "/" <CR>
map ,s :split <C-R>=expand("%:p:h") . "/" <CR>
" credits to:
" https://stackoverflow.com/a/1708936

" it is ok to wrap lines, just use gj or gk to move
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wrap

" console.log hot key: type cll
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" insert mode, puts focus inside parentheses
imap cll console.log()<Esc><S-f>(a
" from visual mode on next line, puts visual selection inside parentheses
vmap cll yocll<Esc>p
" from normal mode, wraps word under cursor
nmap cll yiwocll<Esc>p
" credits to:
" https://gist.github.com/jasongonzales23/6189da1d82ee05a91edfd53403d6941d

" cycle buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:nnoremap gb :bnext<CR>

" load plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/.config/nvim/plugins.vim
