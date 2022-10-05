"" file type stuff (idk, coc might handle this)
syntax enable
filetype plugin on

"" set linebreak for markdown files
autocmd FileType markdown set linebreak
autocmd FileType html set nowrap
"" fuzzy searching stuff
set number
set path+=**
set wildmenu
        
"" copy paste stuffs
set clipboard=unnamedplus

"" turn off case sensitive searching, and enable smartcase
set ignorecase
set smartcase

"" turn off search highlighting
set nohlsearch

"" tabs spaces stuffs
set autoindent expandtab tabstop=4 shiftwidth=4

"" Turn off the arrow keys, force me to use hjkl
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"" VIM PLUG AND PLUGINS

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

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

