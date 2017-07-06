" This file overrides the default configuration file at $VIMRUNTIME/ftplugin/<&filetype>.vim

if exists("b:did_ftplugin")
  finish
endif

let b:did_ftplugin = 1

" Backup the compatibility options.
let s:save_cpo = &cpo

setlocal formatoptions-=t " Disables text-wrap for normal text.

setlocal formatoptions+=croql " Enables text-wrap for comments.

setlocal comments=s1:/*,mb:*,ex:*/,://

" Restore the saved compatibility options.
let &cpo = s:save_cpo
