module P10 where

-- | Run-length encoding of a list
-- >>> encode "aaaabccaadeeee"
-- [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
encode :: Eq a => [a] -> [(Int, a)]
encode = foldr func [] where
    func x [] = [(1, x)]
    func x list@((n, y):xs) =
      if x == y then (n + 1, y):xs else (1, x):list
