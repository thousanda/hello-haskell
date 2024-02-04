fib n
  | n == 1 = 0
  | n == 2 = 1
  | n > 0  = fib (n-2) + fib (n-1)

main :: IO ()
main = do
  mapM_ (\i -> print (fib i)) [0..10]
