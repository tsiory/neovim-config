" vim-plug start
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.nvim/plugged')

" Status line
Plug 'itchyny/lightline.vim'

" Onedark colorscheme
Plug 'joshdick/onedark.vim'

" Gruvbox colorscheme
Plug 'morhetz/gruvbox'

" syntax highlighting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'sheerun/vim-polyglot'

" files hierarchy tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Default arrows
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" toggle NERDTree with <Control N> hot key
map <C-n> :NERDTreeToggle<CR>

" cool icons
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'ryanoasis/vim-devicons'

let g:webdevicons_enable_nerdtree = 1

" editorconfig support
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'editorconfig/editorconfig-vim'

" git integration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" lean & mean status/tabline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

" let g:airline#extensions#tabline#enabled = 1

" emmet (like), essential toolkit for abbreviation expansion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'mattn/emmet-vim'

" trigger expansion with <Comma> <Comma> keys
let g:user_emmet_leader_key=','

let g:user_emmet_settings = {
\  'javascript' : {
\    'extends' : 'jsx',
\    'quote_char': "'",
\  },
\}

" awesome completion tool
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" use <Tab> key to trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" insert or delete parenthesis in pair
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'vim-scripts/auto-pairs-gentle'

" toggle comments
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" use `gcc` to comment out a line (takes a count),
" `gc` in visual mode to comment out the selection, and much more...
Plug 'tpope/vim-commentary'

" search tool
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'mileszs/ack.vim'

" my favourite colorscheme, bubblegum
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'baskerville/bubblegum'

" enable repeating supported plugin maps with `.`
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-repeat'

" use CTRL-A/CTRL-X to increment dates, times, and more
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-speeddating'

" vim-plug end, add plugins to &runtimepath
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#end()

" Additional config for colorscheme
let g:onedark_hide_endofbuffer=1
let g:onedark_termcolors=256
let g:onedark_terminal_italics=1

" Lightline colorscheme
let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }


" activate bubblegum colorscheme
" colorscheme bubblegum-256-dark
" let g:airline_theme='bubblegum'
"
" Gruvbox
colorscheme onedark
" let g:airline_theme='onedark'
