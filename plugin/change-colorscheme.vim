" ==============================================================
" Contributor: chxuan <787280310@qq.com>
" Last Change:  2016-05-16
" Repository: https://github.com/chxuan/change-colorscheme
" License: MIT
" Usage: :NextColorScheme ==> Load next colorscheme
"        :PreviousColorScheme ==> Load previous colorscheme
"        :colorscheme ==> Show current colorscheme
" ==============================================================

" Only load this indent file when no other was loaded.
if exists("load_change_color_scheme")
    finish
endif

if v:version < 700
    echoerr "change-colorscheme: this plugin requires vim >= 7. DOWNLOAD IT! You'll thank me later!"
    finish
endif
let load_change_color_scheme = 1

if !exists("s:file_path")
    let s:file_path = &rtp
endif

if !exists("s:color_scheme_list")
    let s:color_scheme_list = []
endif
    
if !exists("s:default_color_scheme_list")
    let s:default_color_scheme_list = ['blue', 'delek', 'evening', 'morning', 'peachpuff', 'slate', 'zellner', 'darkblue', 'desert', 'koehler', 'murphy', 'ron', 'default', 'elflord', 'pablo', 'shine', 'torte']
endif

if !exists("s:current_index")
    let s:current_index = -1
endif

if !exists("s:is_init_color_scheme_list")
    let s:is_init_color_scheme_list = 0 "false
endif

function! CheckColorScheme(scheme_name)
    if a:scheme_name == "solarized"
        execute 'set background=dark'
        execute 'let g:solarized_termcolors=256'
    endif
endfunction

function! LoadNextColorScheme()
    let len = len(s:color_scheme_list)
    if s:current_index + 1 >= len
        return
    endif
    let s:current_index += 1

    if len != 0 && s:current_index >= 0 && s:current_index + 1 <= len
        call CheckColorScheme(s:color_scheme_list[s:current_index])
        execute 'colorscheme ' . s:color_scheme_list[s:current_index]
    endif
endfunction

function! LoadPreviousColorScheme()
    if s:current_index <= 0 
        return
    endif
    let s:current_index -= 1

    let len = len(s:color_scheme_list)
    if len != 0 && s:current_index >= 0 && s:current_index + 1 <= len
        call CheckColorScheme(s:color_scheme_list[s:current_index])
        execute 'colorscheme ' . s:color_scheme_list[s:current_index]
    endif
endfunction

function! LoadColorScheme(operate)
    if !s:is_init_color_scheme_list
        let path_list = split(globpath(s:file_path, "colors/*.vim", "\n"))
        let s:color_scheme_list = map(path_list, "substitute(fnamemodify(v:val, ':t'), '\\..\\{-}$', '', '')")

        for i in range(0, len(s:default_color_scheme_list) - 1)
            call add(s:color_scheme_list, s:default_color_scheme_list[i])
        endfo

        let s:is_init_color_scheme_list = 1 "true
    endif

    if a:operate == "next"
        call LoadNextColorScheme()
    elseif a:operate == "previous"
        call LoadPreviousColorScheme()
    else
        echo "Invaild operate"
    endif
endfunction

command! -nargs=0 NextColorScheme :call LoadColorScheme("next")
command! -nargs=0 PreviousColorScheme :call LoadColorScheme("previous")

