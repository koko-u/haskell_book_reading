第３章 関数の構文
================

単純な値のマッチ
<pre class="brush: hs">
    lucky 7 = "lucky seven"
    lucky x = "normal number"
</pre>

タプルのマッチ
<pre class="brush: hs">
    addVector (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)
</pre>

再帰に便利
<pre class="brush: hs">
    mySum [] = 0
    mySum (n:ns) = n + mySum ns
</pre>