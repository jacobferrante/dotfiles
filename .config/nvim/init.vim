"" file type stuff (idk, coc might handle this)
syntax enable
filetype plugin on

"" fuzzy searching stuff
set number
set path+=**
set wildmenu

"" turn off case sensitive searching, and enable smartcase
set ignorecase
set smartcase

"" turn off search highlighting
set nohlsearch

"" Turn off the arrow keys, force me to use hjkl
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"" Source plugins using plug
call plug#begin('~/.config/nvim/plugged')
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"" Source configurations for plugins
source $HOME/.config/nvim/modules/telescope.vim
source $HOME/.config/nvim/modules/coc.vim

