
set relativenumber
set mouse=a
set incsearch
set tabstop=4
call plug#begin()

Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'Valloric/YouCompleteMe'

call plug#end()


set laststatus=2

map <C-o> :NERDTreeToggle<CR>
map <C-_> <leader>c<Space>
