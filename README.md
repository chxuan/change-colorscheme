change-colorscheme: A quick change theme plugin for vim
===============================================

安装
------------
    
如果你使用[Vundle][1]插件管理器, 将 `Plugin 'chxuan/change-colorscheme'` 加到 `~/.vimrc` 然后执行 `:PluginInstall`.


使用
------------

请将以下配置加到 `~/.vimrc`:

    nnoremap <silent> <F10> :NextColorScheme<cr>
    inoremap <silent> <F10> <esc> :NextColorScheme<cr>
    nnoremap <silent> <F9> :PreviousColorScheme<cr>
    inoremap <silent> <F9> <esc> :PreviousColorScheme<cr>

注意
------------

该插件将会加载`~/.vim/colors`下的主题文件.

截图
------------

![此处输入图片的描述][2]

License
------------

This software is licensed under the [MIT license][3]. © 2016 chxuan

  [1]: https://github.com/VundleVim/Vundle.vim
  [2]: https://github.com/chxuan/change-colorscheme/blob/master/screenshots/change-colorscheme.gif
  [3]: https://github.com/chxuan/change-colorscheme/blob/master/LICENSE
