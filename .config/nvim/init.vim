set mouse=a
syntax on
set expandtab
set tabstop=2
set shiftwidth=2
set nu
set rnu
map <C-n> :NvimTreeToggle<CR>
map <leader>r :NvimTreeRefresh<CR>
map <leader>n :NvimTreeFindFile<CR>
nmap <F8> :TagbarToggle<CR>
call plug#begin()
Plug 'hashivim/vim-terraform'
Plug 'scrooloose/syntastic'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'kannokanno/previm'
Plug 'rust-lang-nursery/rustfmt'
Plug 'preservim/vim-markdown'
Plug 'hashivim/vim-terraform'
Plug 'majutsushi/tagbar'
Plug 'hrsh7th/nvim-cmp'
Plug 'rust-lang/rust.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'fatih/vim-go'
call plug#end()
let g:previm_open_cmd = 'open -a Safari'
lua require('nvim-tree').setup({view = {relativenumber = true}})
imap jk <Esc>
let g:vim_markdown_folding_disabled = 1
highlight NonText ctermbg=none
highlight Normal ctermbg=none
filetype plugin indent on

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "python", "go", "rust" },
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
EOF
let g:catppuccin_flavour = "macchiato" " dusk  latte, frappe, macchiato, mocha
colorscheme catppuccin 
