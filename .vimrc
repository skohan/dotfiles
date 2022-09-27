
set mouse=a
set incsearch
set tabstop=4
set shiftwidth=4
set expandtab
"set relativenumber
set number
set clipboard=unnamed

call plug#begin()
" For windows
" call plug#begin('$HOME/vimfiles/autoload')
" location is where the vim plug.vim file is stored

Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()


set laststatus=2

map <C-o> :NERDTreeToggle<CR>
"map <C-/> <leader>c<Space>
map <C-_> <leader>c<Space>
nnoremap <silent> <C-p> :FZF<CR>

" Changing color scheme
colorscheme gruvbox
set background=dark

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()


