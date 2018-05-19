" ==============================================================
" Contributor: chxuan <787280310@qq.com>
" Repository: https://github.com/chxuan/change-colorscheme
" Create Date: 2016-05-16
" License: MIT
" ==============================================================

if exists("g:load_change_color_scheme")
    finish
endif

let g:load_change_color_scheme = 1

command! -nargs=0 NextColorScheme :call change#change#change_theme("next")
command! -nargs=0 PreviousColorScheme :call change#change#change_theme("previous")
command! -nargs=0 RandomColorScheme :call change#change#change_theme("random")
command! -nargs=0 ShowColorScheme :call change#change#show_theme()

