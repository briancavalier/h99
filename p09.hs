module P09 where

-- Pack consecutive duplicates of list elements into sublists
-- >>> pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
-- ["aaaa","b","cc","aa","d","eeee"]
pack :: Eq a => [a] -> [[a]]
pack = foldr func [] where
    func x [] = [[x]]
    func x list@(y:xs) =
      if x == head y then (x:y):xs else [x]:list
