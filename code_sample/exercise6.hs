fib :: Integer -> Integer
fib 1 = 1
fib 2 = 1
fib n = fib' n 1 0
  where fib' 1 a b = a
        fib' n a b = fib' (n-1) (a+b) a


