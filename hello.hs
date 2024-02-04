fib 1 = 0
fib 2 = 1
fib n =
  if n <= 0
  then 0
  else fib (n-2) + fib (n-1)

main :: IO ()
main = do
  mapM_ (\i -> print (fib i)) [1..10]
