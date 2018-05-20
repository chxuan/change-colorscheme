" ==============================================================
" Author: chxuan <787280310@qq.com>
" Repository: https://github.com/chxuan/change-colorscheme
" Create Date: 2016-05-16
" License: MIT
" ==============================================================

" 搜索文件
function! change#util#search_files(path, expr)
    return split(globpath(a:path, a:expr, "\n"))
endfunction

" 应用主题
function! change#util#apply_theme(theme_name)
    echo "Apply theme[" . a:theme_name . "]"
    execute "colorscheme " . a:theme_name
endfunction

" 显示当前主题名
function! change#util#show_current_theme()
    execute "colorscheme"
endfunction

" 获取文件的base name
function! change#util#get_base_name(path_list)
    return map(a:path_list, 'fnamemodify(v:val, ":t:r")')
endfunction

" 生成随机数 $RANDOM % (max - min + 1) + min
function! change#util#get_random(min, max)
    return system("echo $(($RANDOM % (" . a:max . "-" . a:min . " + 1) + ". a:min . "))")
endfunction

