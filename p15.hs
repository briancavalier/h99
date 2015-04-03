module P15 where

-- | Replicate the elements of a list a given number of times.
-- >>> repli "abc" 3
-- "aaabbbccc"
repli :: [a] -> Int -> [a]
repli xs n = concatMap (replicate n) xs

-- | Alternate w/o using concatMap + replicate
-- >>> repli' "abc" 3
-- "aaabbbccc"
repli' :: [a] -> Int -> [a]
repli' [] _ = []
repli' (x:xs) n = repli1 x n ++ repli' xs n
  where
    repli1 x 0 = []
    repli1 x n = x : repli1 x (n - 1)
