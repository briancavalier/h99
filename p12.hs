module P12 where

import P11(Item(..), encodeModified)

-- | Modified run-length encoding
-- >>> decodeModified [Multiple 4 'a',Single 'b',Multiple 2 'c',Multiple 2 'a',Single 'd',Multiple 4 'e']
-- "aaaabccaadeeee"
-- >>> decodeModified (encodeModified "aaaabccaadeeee")
-- "aaaabccaadeeee"
decodeModified :: Eq a => [Item a] -> [a]
decodeModified = concatMap f
  where
    f (Single x) = [x]
    f (Multiple n x) = replicate n x
