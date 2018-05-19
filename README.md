change-colorscheme: A quick change theme plugin for vim
===============================================

安装
------------
    
如果你使用[Vundle][1]插件管理器, 将 `Plugin 'chxuan/change-colorscheme'` 加到 `~/.vimrc` 然后执行 `:PluginInstall`。


使用
------------

请将以下配置加到 `~/.vimrc`，如果不喜欢以下映射，可根据个人喜好更改。

    nnoremap <silent> <F9> :PreviousColorScheme<cr>
    inoremap <silent> <F9> <esc> :PreviousColorScheme<cr>
    nnoremap <silent> <F10> :NextColorScheme<cr>
    inoremap <silent> <F10> <esc> :NextColorScheme<cr>
    nnoremap <silent> <F11> :RandomColorScheme<cr>
    inoremap <silent> <F11> <esc> :RandomColorScheme<cr>
    nnoremap <silent> <F12> :ShowColorScheme<cr>
    inoremap <silent> <F12> <esc> :ShowColorScheme<cr>


特性
------------

该插件支持以下特性:

- 加载上一个主题
- 加载下一个主题
- 随机加载一个主题
- 显示当前主题


注意
------------

该插件将会加载`~/.vim`下的所有主题文件。

截图
------------

![此处输入图片的描述][2]

License
------------

This software is licensed under the [MIT license][3]. © 2016 chxuan

  [1]: https://github.com/VundleVim/Vundle.vim
  [2]: https://github.com/chxuan/change-colorscheme/blob/master/screenshots/change-colorscheme.gif
  [3]: https://github.com/chxuan/change-colorscheme/blob/master/LICENSE
