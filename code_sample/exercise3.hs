uniq :: [Int] -> [Int]
uniq [] = []
uniq (x:xs) = x : uniq (x `removeAllFrom` xs)
  where x `removeAllFrom` xs = [y | y <- xs, y /= x]