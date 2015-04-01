module P08 where

-- Remove adjacent duplicates
-- >>> compress "aaaabccaadeeee"
-- "abcade"
compress :: Eq a => [a] -> [a]
compress [] = []
compress [x] = [x]
compress (x:ys@(y:_))
  | x == y    = compress ys
  | otherwise = x : compress ys
