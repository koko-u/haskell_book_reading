pathCount :: Int -> Int -> Int
pathCount _ 0 = 1
pathCount 0 _ = 1

pathCount n k = pathCount' n (replicate (k+1) 1)
  where pathCount' 0 lst = last lst
        pathCount' n lst = pathCount' (n-1) next
          where next = 1 : [ n + m | (n, m) <- zip (tail lst) next ]

{-
pathCount' 3 [1, 1, 1, 1, 1]

             [1, 1, 1, 1, 1]
pathCount' 2 [1, 2, 3, 4, 5]

             [1, 2, 3, 4, 5]
pathCount' 1 [1, 3, 6, 10, 15]

             [1, 3, 6, 10, 15]
pathCount' 0 [1, 4, 10, 20, 35]

          => 35
-}
