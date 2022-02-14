# popcontexts.vim
## what
Vim plugin to display contexts of current line.

It works in *.py (and maybe in other indented file).
## usage
```
:Pctx
```
`Pctx` is an abbreviation of `PopupConTeXt`.

## keymap
By default, this plugin does not change key mappings.

In my `.vimrc`,
```vim
let mapleader="\<Space>"
nnoremap <leader>c :Pctx<CR>
```
