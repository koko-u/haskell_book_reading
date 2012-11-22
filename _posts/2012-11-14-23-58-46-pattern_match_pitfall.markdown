よくある失敗
============

リスト内包表記でマッチしないパターンは除外される

<pre class="brush: plain">
    ghci> let ls = [(1,2),(3,4),(5,7),(3,8)]
    ghci> [ p | p@(3, _) <- ls ]
    [(3, 4), (3, 8)]
</pre>

...

なるほど、でこれを利用して関数を定義してしまう

<pre class="brush: hs">
    choice :: Int->[(Int,Int)]->[(Int,Int)]
    choice n ls = [ p | p@(n, _) <- ls ]
</pre>