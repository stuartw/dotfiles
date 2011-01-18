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

":set spell

:set formatprg=par\ -rw78
