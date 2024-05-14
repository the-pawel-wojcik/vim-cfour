# vimc4
A [Vim](https://www.vim.org/) plugin for [CFOUR](https://cfour.uni-mainz.de/cfour/).

## Install

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
