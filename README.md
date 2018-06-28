change-colorscheme: A quick change theme plugin for vim
===============================================

![][1]

## 安装
    
- `vim-plug`

    Plug 'chxuan/change-colorscheme'

- `Vundle`

    Plugin 'chxuan/change-colorscheme'

## 使用

- `:PreviousColorScheme`

    加载上一个主题

- `:NextColorScheme`

    加载下一个主题

- `:RandomColorScheme`
    
    随机加载一个主题

- `:ShowColorScheme`

    显示当前主题

## 参考配置

请将以下配置加到 `~/.vimrc`，如果不喜欢以下映射，可根据个人喜好更改。

    nnoremap <silent> <F9> :PreviousColorScheme<cr>
    inoremap <silent> <F9> <esc> :PreviousColorScheme<cr>
    nnoremap <silent> <F10> :NextColorScheme<cr>
    inoremap <silent> <F10> <esc> :NextColorScheme<cr>
    nnoremap <silent> <F11> :RandomColorScheme<cr>
    inoremap <silent> <F11> <esc> :RandomColorScheme<cr>
    nnoremap <silent> <F12> :ShowColorScheme<cr>
    inoremap <silent> <F12> <esc> :ShowColorScheme<cr>

## 注意

该插件将会加载`~/.vim`下的所有主题文件。


## License

This software is licensed under the [MIT license][2]. © 2016 chxuan

  [1]: https://github.com/chxuan/change-colorscheme/blob/master/screenshots/change-colorscheme.gif
  [2]: https://github.com/chxuan/change-colorscheme/blob/master/LICENSE
