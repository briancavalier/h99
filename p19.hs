module P19 where

-- | Rotate a list N places to the left.
-- >>> rotate ['a','b','c','d','e','f','g','h'] 3
-- "defghabc"
-- >>> rotate ['a','b','c','d','e','f','g','h'] (-2)
-- "ghabcdef"
rotate :: [a] -> Int -> [a]
rotate xs n
  | n == 0 = xs
  | n > 0 = drop n xs ++ take n xs
  | n < 0 = drop n' xs ++ take n' xs
    where n' = length xs + n
