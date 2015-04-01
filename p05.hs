module P05 where

-- | Reverse list
-- >>> myReverse "A man, a plan, a canal, panama!"
-- "!amanap ,lanac a ,nalp a ,nam A"
-- >>> myReverse [1,2,3,4]
-- [4,3,2,1]
myReverse :: [a] -> [a]
myReverse = foldl (flip (:)) []

-- | Reverse list w/o fold
-- >>> myReverse' "A man, a plan, a canal, panama!"
-- "!amanap ,lanac a ,nalp a ,nam A"
-- >>> myReverse' [1,2,3,4]
-- [4,3,2,1]
myReverse' :: [a] -> [a]
myReverse' = rev [] where
  rev r [] = r
  rev ys (x:xs) = rev (x:ys) xs
