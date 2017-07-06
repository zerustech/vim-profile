" This file overrides the default configuration file at $VIMRUNTIME/ftplugin/<&filetype>.vim

if exists("b:twig_did_ftplugin")
  finish
endif

let b:twig_did_ftplugin = 1

" Backup the compatibility options.
let s:save_cpo = &cpo

setlocal formatoptions-=t " Disables text-wrap for normal text.

setlocal formatoptions+=croql " Enables text-wrap for comments.

" Due to issue https://github.com/vim/vim/issues/1696, the middle part of three-piece comments must NOT be blank.
" After issue #1696 has been fixed, configure three-piece comments to setlocal comments=s:{#,m:\ \ \ \ \ ,el:#}
setlocal comments+=s1:{#,mb:#,ex:#}

let b:html_indent_custom_block_tags = []
let custom_tag = ['{#', 7, '#}', 'comment', ':,:', '\zs:\ze,\zs:\ze', 's:Alien5']
call add(b:html_indent_custom_block_tags, custom_tag)

" Restore the saved compatibility options.
let &cpo = s:save_cpo
