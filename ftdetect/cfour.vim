au BufNewFile,BufRead *.c4,*.cfour,*.cccc,ZMAT set ft=cfour

" if did_filetype()
"   finish
" endif
" if getline(2) != "X" finish
" for line in getlines()
"         if line =~ '^CFOUR\*'
"             setf cfour
"         endif
" endfor
