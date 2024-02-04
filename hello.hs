f a = if a == 1 then "1" else "?"

main = do
  print $ f 1
  print $ f 4
