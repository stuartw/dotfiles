"This must be first, because it changes other options as side effect
set nocompatible

" turn filetype on to avoid non-zero exit code at exit
filetype on
filetype off

"include all plugins and generate help
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

filetype on
filetype plugin indent on

" tab is 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
" replace tab with spaces
set expandtab

set backspace=indent,eol,start

let mapleader = ","

" Searching options
" turn off vim specific regex sntax - use regular regex instead
nnoremap / /\v
vnoremap / /\v
" be case sensititve only if mixed case in regex
set ignorecase
set smartcase
" replace matches on whole line - i.e. no need for g in :%s/foo/bar/g any more
set gdefault
:set hls is " highlight searches
" tab on a bracket to jump to its partner
nnoremap <tab> %
vnoremap <tab> %

:set laststatus=2
:syntax on

" display line numbers
:set number
" Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>


":set spell

:set formatprg=par\ -rw78i

" force cursor to the middle of the file
:set scrolloff=1000

"miniBufExp variables
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" Task list
map T :TaskList<CR>
map P :TlistToggle<CR>

" pylint - commented out for now
" autocmd FileType python let &makeprg='pylint-2.6 % -i y -r n -f parseable'
" autocmd BufWritePost *.py make

" set python folding
set foldmethod=indent
set foldlevel=99

nnoremap <F5> :GundoToggle<CR>

" Pasting into the terminal gives problems with indent mode, toggle paste mode 
" in insert mode and the indent level of the orginal text is preserved
" taken from http://vim.wikia.com/wiki/Toggle_auto-indenting_for_code_paste
set pastetoggle=<F2>

" tab completion (supertab)
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

set guioptions+=m

" slime stuff
let g:slimv_lisp = "/opt/local/bin/chicken"

" use w!! to write file with sudo
cmap w!! %!sudo tee > /dev/null %

" Disable slow features on large files
" http://vim.wikia.com/wiki/Faster_loading_of_large_files
if !exists("my_auto_commands_loaded")
  let my_auto_commands_loaded = 1
  " Large files are > 10M
  " Set options:
  " eventignore+=FileType (no syntax highlighting etc
  " assumes FileType always on)
  " noswapfile (save copy of file)
  " bufhidden=unload (save memory when other file is viewed)
  " buftype=nowritefile (is read-only)
  " undolevels=-1 (no undo possible)
  let g:LargeFile = 1024 * 1024 * 10
  augroup LargeFile
    autocmd BufReadPre * let f=expand("<afile>") | if getfsize(f) > g:LargeFile | set eventignore+=FileType | setlocal noswapfile bufhidden=unload buftype=nowrite undolevels=-1 | else | set eventignore-=FileType | endif
    augroup END
  endif
