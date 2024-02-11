sum' [] = 0
sum' (x:xs) = x + (sum' xs)

product' [] = 1
product' (x:xs) = x * (product' xs)

take' _ [] = []
take' n _ | n < 1 = []
take' n (x:xs) = x : take' (n-1) xs

drop' _ [] = []
drop' n xs | n < 1 = xs
drop' n (_:xs) = drop' (n-1) xs

reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

main :: IO ()
main = do
  print $ sum' [1..10]
  print $ product' [1..5]
  print $ take' 3 [1..10]
  print $ drop' 3 [1..10]
  print $ reverse' [1..10]
