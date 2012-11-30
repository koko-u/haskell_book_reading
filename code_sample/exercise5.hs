hanoi :: Int -> [(Int, Int)]
hanoi n = hanoi' n 1 2
  where hanoi' 1 from to = [(from, to)]
        hanoi' n from to = hanoi' (n-1) from (other from to) ++
                           [(from, to)] ++
                           hanoi' (n-1) (other from to) to
          where other from to = [n | n <- [1..3], n /= from, n /= to] !! 0
