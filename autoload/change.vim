" ==============================================================
" Contributor: chxuan <787280310@qq.com>
" Repository: https://github.com/chxuan/change-colorscheme
" Create Date: 2016-05-16
" License: MIT
" ==============================================================

" 默认文件搜索路径
let s:file_path = "~/.vim/colors"
" 主题列表
let s:theme_list = []
" 默认主题列表
let s:default_theme_list = ['blue', 'delek', 'evening', 'morning', 'peachpuff', 'slate', 'zellner', 'darkblue', 'desert', 'koehler', 'murphy', 'ron', 'default', 'elflord', 'pablo', 'shine', 'torte']
" 当前主题位置
let s:current_pos = -1
" 是否初始化了主题列表
let s:is_init_theme_list = 0 

" 改变主题
function! change#change_theme(operate)
    if !s:is_init_theme_list
        call <sid>read_theme_list()
        let s:is_init_theme_list = 1
    endif

    if a:operate == "next"
        call <sid>load_next_theme()
    elseif a:operate == "previous"
        call <sid>load_previous_theme()
    else
        echo "Invaild operate"
    endif
endfunction

" 读取主题
function! s:read_theme_list()
    let path_list = split(globpath(s:file_path, '*.vim', "\n"))
    let s:theme_list = map(path_list, 'fnamemodify(v:val, ":t:r")')

    for i in range(0, len(s:default_theme_list) - 1)
        call add(s:theme_list, s:default_theme_list[i])
    endfo
endfunction

" 加载上一个主题
function! s:load_previous_theme()
    if s:current_pos >= 0 
        call <sid>apply_theme(s:theme_list[s:current_pos])
        let s:current_pos -= 1
    endif
endfunction

" 加载下一个主题
function! s:load_next_theme()
    if s:current_pos + 1 <= len(s:theme_list)
        call <sid>apply_theme(s:theme_list[s:current_pos])
        let s:current_pos += 1
    endif
endfunction

" 应用主题
function! s:apply_theme(theme_name)
    echo a:theme_name
    execute 'colorscheme ' . a:theme_name
endfunction
