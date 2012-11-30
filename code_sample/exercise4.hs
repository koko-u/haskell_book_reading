binExp :: Int -> String
binExp 0 = "0"
binExp 1 = "1"
binExp n = binExp q ++ if r == 0 then "0" else "1"
  where (q, r) = n `divMod` 2