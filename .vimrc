" Preamble
set nocompatible
filetype off
set encoding=utf-8

" Plugins
call plug#begin(stdpath('data') . 'plugs')

Plug 'prabirshrestha/async.vim'
Plug 'mhartington/oceanic-next'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'srstevenson/vim-picker'
Plug 'prabirshrestha/vim-lsp'
Plug 'tpope/vim-dadbod'
Plug 'elixir-editors/vim-elixir', {'for': 'elixir'}
Plug 'mhinz/vim-mix-format', {'for': 'elixir'}
Plug 'MaxMEllon/vim-jsx-pretty', {'for': 'javascript'}
Plug 'othree/yajs.vim', {'for': 'javascript'}
Plug 'jiangmiao/auto-pairs', {'for': 'javascript'}

call plug#end()

" Theme
colorscheme OceanicNext

" General
syntax  on
filetype plugin indent on
set showmode
set tabstop=2
set shiftwidth=2
set expandtab
set backspace=indent,eol,start
set autoindent
set copyindent
set showmatch

set cursorline
set smarttab
set splitbelow
set splitright

set scrolloff=2

set hidden

set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

set t_Co=256

set mouse=a
set clipboard=unnamed

set nobackup
set noswapfile

set ruler

augroup updatebuffer
	au FocusLost,WinLeave * :silent! wa
	au FocusGained,BufEnter * :silent! !
augroup END

" newtr
let g:netrw_liststyle = 3
let g:netrw_banner = 0

" Elixir
let g:mix_format_on_save = 1
augroup word_boundary
  au!
  autocmd BufNewFile,BufRead *.ex,*.exs set iskeyword-=_
augroup END

" Vim Picker
nnoremap <C-p> :PickerEdit<cr>
nnoremap <C-p>h :PickerSplit<cr>
nnoremap <C-p>t :PickerTabedit<cr>
nnoremap <C-p>v :PickerVsplit<cr>

" Key Mappings
nnoremap <esc> :noh<cr>

nnoremap <C-j>  <C-w><C-j>
nnoremap <C-k>  <C-w><C-k>
nnoremap <C-l>  <C-w><C-l>
nnoremap <C-h>  <C-w><C-h>

