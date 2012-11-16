リスト内包表記
==============

let式
--------------

let でリスト内包表記の出力部分やフィルターに使用できる変数や関数をバインドすることができる

<pre class="brush: hs">
   fatMen xs =
     [ p | p@(w, h) <- xs, let bmi = w/h^2; ⇨
           fat x = x > 25.0, fat bmi ]
</pre>
