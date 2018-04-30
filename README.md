change-colorscheme: A quick change theme plugin for vim
===============================================


Intro
-----

Sometimes we want to quickly browse the theme and find the beautiful theme, I think this plugin will meet your requirements.

Installation
------------
    
    git https://github.com/chxuan/change-colorscheme.git
    cd ./change-colorscheme/plugin
    cp change-colorscheme.vim ~/.vim/plugin

Or if you used [Vundle][1], add `Plugin 'chxuan/change-colorscheme'` into your `~/.vimrc` and run `:PluginInstall`.

Quickstart
------------

Put something like the following into your `~/.vimrc`:

    map <silent> <F10> :NextColorScheme<cr>
    imap <silent> <F10> <esc> :NextColorScheme<cr>
    map <silent> <F9> :PreviousColorScheme<cr>
    imap <silent> <F9> <esc> :PreviousColorScheme<cr>

If you do this the `F10` key will load next colorscheme and the `F9` key will load previous colorscheme. You can of course use any shortcut you want. if you want to know current colorscheme, please run `:colorscheme`.

Note
------------

This plugin will search for the colorscheme in `~/.vim/colors`.

Screenshots
------------

![此处输入图片的描述][2]

License
------------

This software is licensed under the [MIT license][3]. © 2016 chxuan


  [1]: https://github.com/VundleVim/Vundle.vim
  [2]: https://github.com/chxuan/change-colorscheme/blob/master/screenshots/change-colorscheme.gif
  [3]: https://github.com/chxuan/change-colorscheme/blob/master/LICENSE
