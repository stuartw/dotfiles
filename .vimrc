"This must be first, because it changes other options as side effect
set nocompatible

filetype off

"include all plugins and generate help
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

filetype on
filetype plugin indent on

set backspace=indent,eol,start

:set laststatus=2
:set hls is
:syntax enable
" display line numbers
:set number
" Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
":set spell

:set formatprg=par\ -rw78i

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

nnoremap <F5> :GundoToggle<CR>

" Pasting into the terminal gives problems with indent mode, toggle paste mode 
" in insert mode and the indent level of the orginal text is preserved
" taken from http://vim.wikia.com/wiki/Toggle_auto-indenting_for_code_paste
set pastetoggle=<F2>
