module P17 where

-- | Split a list into two parts; the length of the first part is given.
-- >>> split "abcdefghik" 3
-- ("abc","defghik")
split :: [a] -> Int -> ([a], [a])
split xs n = (take n xs, drop n xs)

-- | Split a list into two parts; the length of the first part is given.
-- >>> split' "abcdefghik" 3
-- ("abc","defghik")
split' :: [a] -> Int -> ([a], [a])
split' [] _ = ([], [])
split' xs 0 = ([], xs)
split' (x:xs) n =
  let (l, r) = split' xs (n - 1)
  in (x:l, r)
