module P04 where

-- | Length of list
-- >>> myLength [123, 456, 789]
-- 3
-- >>> myLength "Hello, world!"
-- 13
myLength :: [a] -> Int
myLength [] = 0
myLength (_:xs) = 1 + myLength xs
