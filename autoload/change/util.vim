" ==============================================================
" Author: chxuan <787280310@qq.com>
" Repository: https://github.com/chxuan/change-colorscheme
" Create Date: 2016-05-16
" License: MIT
" ==============================================================

" 应用主题
function! change#util#apply_theme(theme_name)
    echo "Apply theme[" . a:theme_name . "]"
    execute "colorscheme " . a:theme_name
endfunction

" 生成随机数 $RANDOM % (max - min + 1) + min
function! change#util#get_random(min, max)
    return system("echo $(($RANDOM % (" . a:max . "-" . a:min . " + 1) + ". a:min . "))")
endfunction

