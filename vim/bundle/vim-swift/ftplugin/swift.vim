setlocal comments=s1:/*,mb:*,ex:*/,:///,://
setlocal expandtab
setlocal ts=2
setlocal sw=2
setlocal smartindent

" user ext: map go to swiftformat
nnoremap gp :silent %!swiftformat --quiet stdin
