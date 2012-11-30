{-
comment
comment
-}

-- comment

upperCase :: String -> String
upperCase str = [ upperChar c | c <- str ]

upperChar :: Char -> Char
upperChar c
  | null candidate  = c
  | otherwise       = candidate !! 0
  where candidate = [u | (l,u) <- zip ['a'..'z'] ['A'..'Z'], l == c]

removeSpace :: String -> String
removeSpace str = [ c | c <- str, not (isSpace c) ]
  where isSpace c = c `elem` " \n\f\v\t"