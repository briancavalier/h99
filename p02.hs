module P02 where

-- | Next to last item
-- >>> myButLast [1,2,3,4]
-- 3
-- >>> myButLast ['a'..'z']
-- 'y'
myButLast :: [a] -> a
myButLast [x,_] = x
myButLast (_:xs) = myButLast xs
