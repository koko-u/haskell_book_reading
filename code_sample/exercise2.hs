cover :: (Eq a) => [a] -> [a] -> Bool
cover lst1 [] = True
cover lst1 (x:xs)
  | x `elem` lst1 = cover (x `removeFrom` lst1) xs
  | otherwise     = False
  where x `removeFrom` [] = []
        x `removeFrom` (y:ys)
          | y == x    = ys
          | otherwise = y : (x `removeFrom` ys)