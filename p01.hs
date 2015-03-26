module P01 where

-- | Find the last element in a list
-- >>> myLast [1,2,3,4]
-- 4
-- >>> myLast ["x", "y", "z"]
-- "z"
myLast :: [a] -> a
myLast [x] = x
myLast (_:xs) = myLast xs
