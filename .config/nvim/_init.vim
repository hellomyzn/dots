set autoindent
set expandtab
set clipboard=unnamed
set hlsearch
set number
set nocompatible
set shell=/bin/zsh
set shiftwidth=4
set tabstop=4
set textwidth=0
syntax on

" Github: https://github.com/junegunn/vim-plug
call plug#begin()
    " The default plugin directory will be as follows:
    "   - Vim (Linux/macOS): '~/.vim/plugged'
    "   - Vim (Windows): '~/vimfiles/plugged'
    "   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
    " You can specify a custom plugin directory by passing it as the argument
    "   - e.g. `call plug#begin('~/.vim/plugged')`
    "   - Avoid using standard Vim directory names like 'plugin'
    " Make sure you use single quotes

    " # Commands
    "   :PlugInstall            Run this command on .init.vim to install plugins. 
    "   :PlugStatus             Check the status of plugins.
    "   :PlugClean[!]           Remove unlisted plugins (bang version will clean without prompt)

    " # vim-horizon: https://github.com/ntk148v/vim-horizon
    "   Horizon is a beautifully warm dark colorscheme for Vim & inspired by Visual Studio Code Horizon Theme: 
    Plug 'ntk148v/vim-horizon'

    " # nerdtree: https://github.com/preservim/nerdtree
    "   The NERDTree is a file system explorer for the Vim editor. Using this plugin, users can visually browse complex directory hierarchies, quickly open files for reading or editing, and perform basic file system operations.
    Plug 'preservim/nerdtree'

    " # fzf: https://github.com/junegunn/fzf.vim
    "   Things you can do with fzf and Vim.
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'

    " vim-polyglot: https://github.com/sheerun/vim-polyglot
    "   A collection of language packs for Vim.
    Plug 'sheerun/vim-polyglot'

call plug#end()


" # NERDTREE: https://github.com/preservim/nerdtree
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
" NERDTree doesn't create any shortcuts outside of the NERDTree window, so as not to overwrite any of your other shortcuts. Use the nnoremap command in your vimrc. You, of course, have many keys and NERDTree commands to choose from. Here are but a few examples.
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

" # vim-gitgutter: https://github.com/airblade/vim-gitgutter
" To turn on line highlighting by default
let g:gitgutter_highlight_lines = 1
" To turn on line number highlighting by default
let g:gitgutter_highlight_linenrs = 1


