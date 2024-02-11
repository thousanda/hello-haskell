-- insertion sort
insert x [] = [x]
insert x (y:ys)
  | x < y = x:y:ys
  | otherwise = y : insert x ys

isort [] = []
isort (x:xs) = insert x (isort xs)

-- bubble sort
swap [x] = [x]
swap (x:xs)
  | x < y = x:y:ys
  | otherwise = y:x:ys
  where
    (y:ys) = swap xs

bsort [] = []
bsort xs = y : bsort ys
  where
    (y:ys) = swap xs

-- merge sort
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
  | x < y = x : merge xs (y:ys)
  | otherwise = y : merge (x:xs) ys

msort [] = []
msort [x] = [x]
msort xs = merge (msort (take h xs)) (msort (drop h xs))
  where
    h = (length xs) `div` 2

-- quick sort
qsort [] = []
qsort [x] = [x]
qsort (n:xs) = qsort lt ++ [n] ++ qsort gteq
  where
    lt = [x | x <- xs, x < n]
    gteq = [x | x <- xs, x >= n]

main :: IO ()
main = do
  print $ isort [3, 6, 1, 2, 7, 4]
  print $ swap [3, 6, 1, 2, 7, 4]
  print $ bsort [3, 6, 1, 2, 7, 4]
  print $ msort [3, 6, 1, 2, 7, 4]
  print $ qsort [3, 6, 1, 2, 7, 4]
