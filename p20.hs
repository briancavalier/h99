module P20 where

-- | Remove the K'th element from a list.
-- >>> removeAt 2 "abcd"
-- ('b',"acd")
removeAt :: Int -> [a] -> (a, [a])
removeAt k xs = (head t, take k' xs ++ tail t)
  where
    k' = k - 1
    t = drop k' xs

-- | Alternative using Maybe to handle failure
-- >>> removeAt' 2 "abcd"
-- (Just 'b',"acd")
removeAt' :: Int -> [a] -> (Maybe a, [a])
removeAt' _ [] = (Nothing, [])
removeAt' 1 (x:xs) = (Just x, xs)
removeAt' k (x:xs) = let (a, r) = removeAt' (k - 1) xs in (a, x:r)
