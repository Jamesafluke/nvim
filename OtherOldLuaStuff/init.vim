" Disable Ctrl-w for closing tabs/windows
nnoremap <C-w> <Nop>

" Line numbers
set number
set relativenumber

" Persistent undo
set undofile

" Indent visually selected lines and keep selection
vnoremap > >gv
vnoremap < <gv

" System clipboard integration (use + register on Linux/X11, * on some systems)
set clipboard=unnamedplus

" Keep cursor centered on half-page jumps
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Search options
set ignorecase
set smartcase

" Lines to keep visible above/below cursor
set scrolloff=18
