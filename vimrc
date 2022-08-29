:set number
:set rnu
:set clipboard=unnamed
:set autoindent
:set foldmethod=indent
:set foldlevel=99
:set laststatus=2
:set t_Co=256
:set tabstop=2
:set softtabstop=2
set shiftwidth=2
:set autoindent
nnoremap <space> za
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
"autocmd VimEnter * NERDTree
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'preservim/nerdtree'
Plugin 'hashivim/vim-terraform'
Plugin 'vim-syntastic/syntastic'
Plugin 'fatih/vim-go'
Plugin 'kannokanno/previm'
call vundle#end()  
call plug#begin('~/.vim/plugged')
call plug#end()
let g:go_gopls_enabled = 0
let g:previm_open_cmd = 'open -a Safari'
