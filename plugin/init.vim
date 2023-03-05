" Title:        y-lang.nvim
" Description:  Language support for Y for Neovim.
" Last Change:  05.03.2023
" Maintainer:   H1ghBre4k3r <https://github.com/H1ghBre4k3r>

" Prevents the plugin from being loaded multiple times. If the loaded
" variable exists, do nothing more. Otherwise, assign the loaded
" variable and continue running this instance of the plugin.
if exists("g:loaded_y_lang")
    finish
endif
let g:loaded_y_lang = 1

au BufRead,BufNewFile,BufWritePre *.why   setfiletype y-lang
