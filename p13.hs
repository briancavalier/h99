module P13 where

import P11(Item(..))

-- | Modified run-length encoding
-- >>> encodeModified "aaaabccaadeeee"
-- [Multiple 4 'a',Single 'b',Multiple 2 'c',Multiple 2 'a',Single 'd',Multiple 4 'e']
encodeModified :: Eq a => [a] -> [Item a]
encodeModified = foldr func [] where
    func x [] = [Single x]
    func x list@((Single y):xs) =
      if x == y then (Multiple 2 x):xs else (Single x):list
    func x list@((Multiple n y):xs) =
      if x == y then (Multiple (n + 1) x):xs else (Single x):list
