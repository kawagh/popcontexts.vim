# popcontexts.vim
## what
Vim plugin to display contexts of current line.

It works in *.py (and maybe in other indented file).

![demo](https://user-images.githubusercontent.com/45124565/153831321-d181229f-31d8-4fb5-b58d-5c9da431ad08.gif)

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
