module P11 where

import P10(encode)

data Item a = Single a | Multiple Int a deriving(Show)

-- | Modified run-length encoding
-- >>> encodeModified "aaaabccaadeeee"
-- [Multiple 4 'a',Single 'b',Multiple 2 'c',Multiple 2 'a',Single 'd',Multiple 4 'e']
encodeModified :: Eq a => [a] -> [Item a]
encodeModified = fmap toItem . encode
  where
    toItem (1, x) = Single x
    toItem (n, x) = Multiple n x
