set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
Plugin 'tpope/vim-surround'
Plugin 'vimwiki/vimwiki'
Plugin 'preservim/nerdtree'
Plugin 'JuliaEditorSupport/julia-vim' " for julia support in vim
Plugin 'eigenfoo/stan-vim' " for STAN-support in vim
" Plugin 'jpalardy/vim-slime' " dependency for Ipython-Cell
" Plugin 'hanschen/vim-ipython-cell' " run python code interactively in vim and make virtual cells

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" deactivate arrow keys in all modes
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" deacitvate mouse
set mouse=
set ttymouse=

" set textwidth=72 " good for writing git commit messages
set number
syntax on
set hlsearch
set dictionary+=/home/berrig/citations.txt

set tabstop=4       " Sets the tab character width
set shiftwidth=4    " Sets the width for autoindents
set expandtab       " Converts tabs to spaces

" set complete+=kspell " invoke spelling using ctl-p
" set completeopt=menuone,longest

let ZK_wiki = {'path':'~/Documents/ZK', 'syntax':'markdown', 'ext':'.md'}
let web_wiki = {'path':'~/Documents/Coding_fun/website_personal/content', 'syntax':'markdown', 'ext':'.md'}
let g:vimwiki_list = [ZK_wiki, web_wiki]

" Make the extention explicitly .md in links
let g:vimwiki_markdown_link_ext = 1

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
