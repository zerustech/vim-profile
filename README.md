ZerusTech Vim Profile
================================================
The standard vim profile of ZerusTech.

## Installation ##

```bash
$ cd ~
$ git clone https://github.com/zerustech/vim-profile.git
$ mv .vim .vim-bak
$ mv .vimrc .vimrc-bak
$ ln -s vim-profile/.vimrc .vimrc
$ ln -s vim-profile/.vim .vim
```

### tpope/vim-pathogen ###

```bash
$ mkdir -p ~/.vim/autoload
$ mkdir -p ~/.vim/bundle
$ curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

### zerustech/vim-html ###

```bash
$ cd ~/.vim/bundle
$ git clone https://github.com/zerustech/vim-html.git
```

### suan/vim-instant-markdown ###
```bash
$ sudo npm -g install instant-markdown-d
$ cd ~/.vim/bundle
$ git clone https://github.com/suan/vim-instant-markdown.git
$ cd /opt/local/lib/node_modules/instant-markdown-d
$ ln -s ~/.vim/bundle-resources/vim-instant-markdown/themes .
$ patch < ~/.vim/bundle-resources/vim-instant-markdown/index.html.patch
```

### groenewege/vim-less ###
```bash
$ cd ~/.vim/bundle
$ git clone https://github.com/groenewege/vim-less.git
```

### zerustech/vim-twig ###
```bash
$ cd ~/.vim/bundle
$ git clone https://github.com/zerustech/vim-twig.git
```

### junegunn/vader.vim ###
```bash
$ cd ~/.vim/bundle
$ git clone https://github.com/junegunn/vader.vim.git
```

References
----------
* The [MIT License][1]
* The [zerustech/vim-profile][2] project
* The [zerustech/vim-html][3] project
* The [tpope/pathogen.vim][4] project
* The [suan/vim-instant-markdown][5] project
* The [groenewege/vim-less][6] project
* The [zerustech/vim-twig][7] project
* The [junegunn/vader.vim][8] project

[1]: https://opensource.org/licenses/MIT "The MIT License (MIT)"
[2]: https://github.com/zerustech/vim-profile.git "The zerustech/vim-profile project"
[3]: https://github.com/zerustech/vim-html.git "The zerustech/vim-html project"
[4]: https://tpo.pe/pathogen.vim.git "The tpope/pathogen.vim project"
[5]: https://github.com/suan/vim-instant-markdown.git "The suan/vim-instant-markdown project"
[6]: https://github.com/groenewege/vim-less.git "The groenewege/vim-less project"
[7]: https://github.com/zerustech/vim-twig.git "The zerustech/vim-twig project"
[8]: https://github.com/junegunn/vader.vim "The junegunn/vader.vim project"

License
-------
The *ZerusTech Vim Profile* is published under the [MIT License][1].
