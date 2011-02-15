"This must be first, because it changes other options as side effect
set nocompatible

"ifiletype off

"include all plugins and generate help
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

filetype plugin indent on

:set laststatus=2
:set hls is
:syntax enable
" display line numbers
:set number
" Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>
":set spell

:set formatprg=par\ -rw78i

"miniBufExp variables
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" Task list
map T :TaskList<CR>
map P :TlistToggle<CR>

" pylint
autocmd FileType python let &makeprg='pylint-2.6 % -i y -r n -f parseable'
autocmd BufWritePost *.py make
