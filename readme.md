# vim-cfour
A [Vim](https://www.vim.org/) plugin for [CFOUR](https://cfour.uni-mainz.de/cfour/).

## Install

### VimPlug
1. Install [vim-plug](https://github.com/junegunn/vim-plug?tab=readme-ov-file#vim)
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
[How to use vim-plug](https://github.com/junegunn/vim-plug?tab=readme-ov-file#usage)

2. Add this to your `.vimrc` file
```vimrc
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes
Plug 'the-pawel-wojcik/vim-cfour'
call plug#end()
```

3. Restart vim.
4. Issue the command `:PlugInstall`.

Other vim-plug [commands](https://github.com/junegunn/vim-plug?tab=readme-ov-file#commands)

### Lazy
If you are using [Lazy](https://lazy.folke.io/) install with
```lua
-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- other plugins
    {
      "the-pawel-wojcik/vim-cfour",
      config = function()
        -- vim.g.cfour_fold = 1 -- uncomment if you like folds
      end,
    },
    -- other plugins
  },
})
```

## Features 
1. Colored ZMAT.
2. Colored elements of the output.
3. Folded output (optional). To active the folds add at the end of your vimrc
```vim
let g:cfour_fold = 1
```
See `:help usr_28` for more about folds.

### Conditional features
1. Display molecule from the ZMAT file.
Requirements: [cfour parser](https://github.com/the-pawel-wojcik/cfour_parser),
[cfour proc](https://github.com/the-pawel-wojcik/cfour_proc),
[jmol](https://jmol.sourceforge.net/) and
[CFOUR](https://cfour.uni-mainz.de/cfour/) installed on your computer (only
`xjoda` is needed from CFOUR). Additionally you should have the following
script named `showit.sh` visible from your `PATH`
```bash
#!/usr/bin/bash

home=$(pwd)
tmpdir=$(mktemp -d)
cp ZMAT $tmpdir
cd $tmpdir

# The output needs to be surrounded by the section opening and closing labels 
# otherwise the parser will not be interested in parsing.
c4out=output.c4
echo "--invoking executable--" > $c4out
which xjoda >> $c4out
# See man 1 time for the environmental variable TIME
export TIME="--executable xjoda finished with status %x in %e seconds (walltime)."
# $TIME works only with the full program it doesn not work with the builtin
/usr/bin/time xjoda >> $c4out 2>> $c4out
 
python -m cfour_parser -j "$c4out" > "$c4out".json
# this one will be available online soon
echo Fix line 72 in the showit.sh script! >&2
path/to/cfour_proc/geometry.py -x "$c4out".json > $home/geometry.xyz
cd $home
rm -r $tmpdir
jmol.sh -L -g2000x1000 geometry.xyz
```

After all this effor you can type `:make` to view the molecule. I use the extra
remap
```vim
nnoremap <leader>m <cmd>make<CR>
```
