" Vim filetype plugin for CFOUR <https://cfour.uni-mainz.de/cfour/>
" Last Change: 2023 Nov 4
" Maintainer: Paweł Wójcik <https://github.com/the-pawel-wojcik>

if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

" Bram Moolenar says I should do this. :h 41.11
let s:save_cpo = &cpo
set cpo&vim

if exists("g:loaded_cfour")
  finish
endif
let g:loaded_cfour = 1

set foldmethod=marker
set foldmarker=--invoking,--executable
set foldtext=C4foldtext()
" The showit.sh script does clever stuff with eventually shows the molecule 
" that is stored in a ZMAT file
set makeprg=showit.sh
" Here a version of the showit.sh
" #!/usr/bin/bash

" home=$(pwd)
" tmpdir=$(mktemp -d)
" cp ZMAT $tmpdir/
" cd $tmpdir
" xjoda > output.c4
" # well... you need a parser of the QCOMP section of the CFOUR's output
" ~/Code/chemistry/cfour/parsers/geometry.py output.c4 -v > $home/geometry.xyz
" cd $home
" rm -r $tmpdir
" ~/chemistry/tools/jmol-14.32.82/jmol.sh -L -g2000x1000 geometry.xyz

" See the last section of 41.10
if exists("g:c4loaded")
    delfunction C4foldtext
endif

function C4foldtext()
    let l:cfour_program_path = getline(v:foldstart + 1)
    let l:cfour_program_name = split(l:cfour_program_path, '/')[-1]
    return v:folddashes . ' ' . l:cfour_program_name . ' '
endfunction
let g:c4loaded = 1

let &cpo = s:save_cpo
unlet s:save_cpo
