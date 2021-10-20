if exists('g:loaded_ft_header_nvim') | finish | endif
echo "FT_LOADED"
if !has('nvim-0.5')
    echohl Error
    echom "Sorry this plugin only works with versions of neovim that support lua"
    echohl clear
    finish
endif

if exists('g:loaded_ft_header_nvim')
  finish
endif

let g:loaded_ft_header_nvim = 1

command! -nargs=0 Ftheader :lua require("ft_header").Ftheader()
command! -nargs=0 Ftupdate :lua require("ft_header").Ftupdate()
