module P16 where

-- | Drop every N'th element from a list.
-- >>> dropEvery "abcdefghik" 3
-- "abdeghk"
dropEvery :: [a] -> Int -> [a]
dropEvery xs n = maybeDrop xs n n
  where
    maybeDrop [] _ _ = []
    maybeDrop (x:xs) n 1 = maybeDrop xs n n
    maybeDrop (x:xs) n k = x : maybeDrop xs n (k - 1)
