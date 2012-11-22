よくある失敗
============

あぼーん(´・ｪ・｀)
--------

<pre class="brush: plain">
    ghci> choice 3 [(1,2),(3,4),(5,7),(3,8)]
    [(1,2),(3,4),(5,7),(3,8)]
</pre>

...

<pre class="brush: hs">
    choice :: Int->[(Int,Int)]->[(Int,Int)]
    choice n ls = [ p | p@(n, _) <- ls ]
</pre>

リスト内包表記中の p@(n, _) <- ls は全てがマッチ

関数 choice の"引数" n とは別物！"代入"されたりしない