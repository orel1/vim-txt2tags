vim txt2tags
============

A vim/neovim plugin for [txt2tags](https://txt2tags.org/).

Install
-------

This plugin can be installed with any ['pathogen' like plugin
manager](http://learnvimscriptthehardway.stevelosh.com/chapters/43.html).

For example, if you use [vim-plug](https://github.com/junegunn/vim-plug), add
the following to your plugin section:

    Plug 'orel1/vim-txt2tags'

And then execute the following command in your shell:

    $ vim +PlugInstall


Configuration
-------------

Some behaviors can be customized by changing the default values of variables in
your `vimrc`.

### Folding

There are two kinds of folding rules define in the syntax file:
-   Automatic fold:
    -   Folds starts at any top level title
    -   Folds ends with 3 consecutive blank lines
-   User defined fold:
    -   Fold starts at `% label {{{ comment`
    -   Fold ends with the `% }}} comment`

To enable this syntax folding (default disable) add this:

    let g:txt2tags_fold_enable = 1

By default and if folding is enabled, only the first two title levels are
folded. To fold *all* subtitle levels add this:

    let g:txt2tags_fold_every_subtitle = 1

### Misc

To disable trailing white spaces highlighting (default enable) add this:

    let g:txt2tags_trailing_whitespaces = 0


Credits
-------

This was originally a mirror of <http://www.vim.org/scripts/script.php?script_id=1157>.

Both [txt2tags](https://github.com/txt2tags) and the syntax file were created by
Aurelio Marinho Jargas.

