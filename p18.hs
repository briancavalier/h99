module P18 where

-- | Extract a slice from a list...Start counting the elements with 1.
-- >>> slice ['a','b','c','d','e','f','g','h','i','k'] 3 7
-- "cdefg"
slice :: [a] -> Int -> Int -> [a]
slice xs l r = drop (l - 1) $ take r xs
