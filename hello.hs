fib n = case n of
  1 -> 0
  2 -> 1
  _ | n > 0 -> fib (n-2) + fib (n-1)

main :: IO ()
main = do
  mapM_ (\i -> print (fib i)) [1..10]
