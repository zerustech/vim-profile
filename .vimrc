" The vimrc file based on the example from vim73.
"
" Maintainer:	Michael Lee <michael.lee@zerustech.com>
" Last change:	2017 May 06
"
" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

set nobackup		" do not keep a backup file, use versions instead
set history=50		" keep 50 lines of command line history
set ruler		    " show the cursor position all the time
set showcmd		    " display incomplete commands
set incsearch		" do incremental searching
set hlsearch        " do highlight search

" Encoding configuration
set encoding=utf-8  " character encoding used inside vim
set fileencoding=utf-8 " character encoding for the file of this buffer
set fileencodings=ucs-bom,utf-8,GB2312,GB18030,default,latin1 " A list of character encodings considered when starting to edit an existing file.

" Tab configuration
set expandtab       " In insert mode: use the appropriate number of spaces to insert a <tab> 
set tabstop=4       " Number of spaces that a <tab> in the file counts for.
set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.

execute pathogen#infect()| " Enables pathogen

syntax on           " Enables syntax highlight with the default color settings.

" Enable file type detection.
" Use the default filetype settings, so that mail gets 'tw' set to 72,
" 'cindent' is on in C files, etc.
" Also load indent files, to automatically do language-dependent indenting.
" The following commands can be abbreviated to filetype plugin indent on
" (refer to :filetype-overview)
filetype on        " Enable file type detection
filetype plugin on " Enable loading the plugin files for specific file types.
filetype indent on " Enable loading the indent files for specific file types.

" highlight colorcolumn ctermbg=232| " update background for ColorColumn highlight group
highlight colorcolumn ctermbg=232
set textwidth=80 " Set textwidth to 80 for all files, so that a line break will be inserted at coloumn 81 for a long line.
set colorcolumn=+1,+41 " Specify the offsets, starting from 80th column, where the ideal width indicator should be placed.

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx

    " Remove all auto commands.
    autocmd!

    " For all text files set 'textwidth' to 78 characters.
    " autocmd FileType text setlocal textwidth=78

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    "  Also don't do it when the mark is in the first line, that is the default
    " position when opening a file.
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif

    autocmd BufEnter * :cd %:p:h " change current working path, % is current file, %:p is the full path, %:h is the directory

augroup END
