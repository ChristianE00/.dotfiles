set pastetoggle=<F10>
set autoread
set backspace=indent,eol,start

set number

set relativenumber

set autoindent

set tabstop=2

set shiftwidth=2

set smarttab

set softtabstop=2

" Enable syntax highlighting

syntax on

" Converts tabs to spaces

set expandtab

" Allows manual copy and paste as well as mouse support in various modes

set mouse=v

" Use the system clipboard for all yank, delete, and put operations

set clipboard=unnamedplus

set completeopt-=preview " For No Previews

colorscheme desert



" Enable 256-color support, important for terminal Vim

if $TERM =~ '256color'

    set t_Co=256

endif



" Improve highlighting for certain file types

autocmd FileType html,css,javascript setlocal shiftwidth=2 tabstop=2

autocmd FileType python setlocal shiftwidth=4 tabstop=4



" Highlight current line

set cursorline

" Highlight matching brackets

set showmatch

" Enable file type detection to load syntax highlighting and indentation rules

filetype plugin indent on



" Custom mappings for deletion to avoid interfering with clipboard

nnoremap d "_d

vnoremap d "_d

" Half page down -> half page down and center

nnoremap<C-d> <C-d>zz 

nnoremap<C-u> <C-u>zz

" Load plugins

call plug#begin('$HOME/vimfiles/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'kien/rainbow_parentheses.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plug 'dense-analysis/ale'

" jedi-vim install -- Python IDE for VIM
" Plug 'davidhalter/jedi-vim'

" Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }


call plug#end()

imap <C-L> <Plug>(copilot-accept-word)
imap <A-]> <Plug>(copilot-dismiss)
imap <C-\> <Plug>(copilot-suggest)
imap <A-]> <Plug>(copilot-next)
imap <A-[> <Plug>(copilot-previous)
imap <C-\> <Plug>(copilot-accept-line)


source C:\\Users\\chris\\rainbow.vim

colorscheme dracula


" Disable code completion for Python-mode
" let g:pymode_rope_completion = 0
" let g:pymode_rope_autoimport = 0


" Ensure ALE is enabled
" let g:ale_enabled = 1

" Use flake8 for Python linting with ALE
" let g:ale_linters = {
\   'python': ['flake8'],
\}

" Optional: Configure flake8 options
" This sets the max line length to 120 for flake8
" let g:ale_python_flake8_options = '--max-line-length=120'

" Enable ALE fixers, including autopep8 for auto-formatting if desired
" let g:ale_fixers = {
\   'python': ['autopep8'],
\}

" Enable ALE to fix files on save
" let g:ale_fix_on_save = 1
