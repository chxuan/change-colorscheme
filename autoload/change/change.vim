" ==============================================================
" Author: chxuan <787280310@qq.com>
" Repository: https://github.com/chxuan/change-colorscheme
" Create Date: 2016-05-16
" License: MIT
" ==============================================================

" 默认主题搜索路径
let s:search_path = "~/.vim"
" 主题列表
let s:theme_list = []
" 当前主题位置
let s:current_pos = -1

" 改变主题
function! change#change#change_theme(operate)
    if len(s:theme_list) == 0
        call <sid>read_theme_list()
    endif

    if a:operate == "next"
        call <sid>load_next_theme()
    elseif a:operate == "previous"
        call <sid>load_previous_theme()
    elseif a:operate == "random"
        call <sid>load_theme_by_random()
    else
        echo "Invaild operate"
    endif
endfunction

" 显示当前主题名
function! change#change#show_theme()
    echo "Current theme[" . s:theme_list[s:current_pos] . "]"
endfunction

" 读取主题
function! s:read_theme_list()
    let path_list = <sid>search_theme()
    let s:theme_list = change#util#get_base_name(path_list)
endfunction

" 加载上一个主题
function! s:load_previous_theme()
    if s:current_pos > 0 
        let s:current_pos -= 1
        call change#util#apply_theme(s:theme_list[s:current_pos])
    endif
endfunction

" 加载下一个主题
function! s:load_next_theme()
    if s:current_pos + 1 <= len(s:theme_list)
        let s:current_pos += 1
        call change#util#apply_theme(s:theme_list[s:current_pos])
    endif
endfunction

" 随机加载一个主题
function! s:load_theme_by_random()
    let s:current_pos = change#util#get_random(0, len(s:theme_list) - 1)
    call change#util#apply_theme(s:theme_list[s:current_pos])
endfunction

" 搜索主题
function! s:search_theme()
    return change#util#search_files(s:search_path, "**/colors/*.vim")
endfunction

