すごい Haskell 読書会用資料
===========================

ATND
----

[イベント詳細](http://atnd.org/events/34150)

スライド
--------

[読書会用の資料](http://koko-u.github.com/haskell_book_reading) ... 失敗した。

参照方法
--------

うまく Github Pages にデプロイできなかったので、見たい人は下記の手順でローカルで見て下さい

### ruby 処理系のない人はインストールする

[オブジェクト指向スクリプト言語 Ruby](http://www.ruby-lang.org/ja/)

### 必要な gem をインストールする

    $ gem install jekyll
    $ gem install rdiscount

### リポジトリをcloneする

    $ git clone git://github.com/koko-u/haskell_book_reading.git
    $ cd haskell_book_reading
    $ git submodule init
    $ git submodule update

### jekyll サーバーをローカルで起動する

    $ jekyll --server

### ブラウザで http://localhost:4000/ にアクセスする


