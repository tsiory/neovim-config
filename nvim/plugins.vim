let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" vim-plug start
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.nvim/plugged')

" Material Palenight
Plug 'kaicataldo/material.vim', { 'branch': 'main' }

" Tokyo night colorscheme
Plug 'folke/tokyonight.nvim'

let g:tokyonight_style = "storm"
let g:tokyonight_italic_functions = 1

" FZF Search plugin
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

nnoremap <C-p> :GFiles<CR>

" Status line
Plug 'itchyny/lightline.vim'

" Lightline colorscheme
let g:lightline = {
      \ 'colorscheme': 'material',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead'
      \ },
      \ }

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

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nmap ,f :CocCommand prettier.formatFile :w<CR>

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

" enable repeating supported plugin maps with `.`
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-repeat'

" vim-plug end, add plugins to &runtimepath
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#end()

" Additional config for colorscheme
" let g:onedark_hide_endofbuffer=1
" let g:onedark_termcolors=256
" let g:onedark_terminal_italics=1

" Needed for material theme
if (has('termguicolors'))
  set termguicolors
endif

" Material theme
let g:material_terminal_italics = 1
let g:material_theme_style = 'darker'
colorscheme material

let g:airline_theme='material'
