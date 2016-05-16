" Contributor: chxuan <787280310@qq.com>
" Last Change:  2016-05-16
" Repository: https://github.com/chxuan/change-colorscheme
" License: MIT
" ==============================================================

" Only load this indent file when no other was loaded.
if exists("loadChangeColorScheme")
    finish
endif

if v:version < 700
    echoerr "change-colorscheme: this plugin requires vim >= 7. DOWNLOAD IT! You'll thank me later!"
    finish
endif
let LoadChangeColorScheme = 1

if !exists("s:filePath")
    let s:filePath = "~/.vim/colors"
endif

if !exists("s:colorSchemeList")
    let s:colorSchemeList = []
endif
    
if !exists("s:currentIndex")
    let s:currentIndex = -1
endif

if !exists("s:isInitColorSchemeList")
    let s:isInitColorSchemeList = 0 "false
endif

function! LoadNextColorScheme()
    let len = len(s:colorSchemeList)
    if s:currentIndex + 1 >= len
        return
    endif
    let s:currentIndex += 1

    if len != 0 && s:currentIndex >= 0 && s:currentIndex + 1 <= len
        execute 'colorscheme ' . s:colorSchemeList[s:currentIndex]
    endif
endfunction

function! LoadPreviousColorScheme()
    if s:currentIndex <= 0 
        return
    endif
    let s:currentIndex -= 1

    let len = len(s:colorSchemeList)
    if len != 0 && s:currentIndex >= 0 && s:currentIndex + 1 <= len
        execute 'colorscheme ' . s:colorSchemeList[s:currentIndex]
    endif
endfunction

function! LoadColorScheme(operate)
    if !s:isInitColorSchemeList
        let pathList = split(globpath(s:filePath, '*.vim', "\n"))
        let s:colorSchemeList = map(pathList, 'fnamemodify(v:val, ":t:r")')
        let s:isInitColorSchemeList = 1 "true
    endif

    if a:operate == "next"
        call LoadNextColorScheme()
    elseif a:operate == "previous"
        call LoadPreviousColorScheme()
    else
        echo "Invaild operate"
    endif

    echo g:colors_name
endfunction

command! -nargs=0 NextColorScheme :call LoadColorScheme("next")
command! -nargs=0 PreviousColorScheme :call LoadColorScheme("previous")

