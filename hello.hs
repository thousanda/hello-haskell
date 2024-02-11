import Data.Char    

shift = 13

rotLower c
  | ord c + shift <= ord 'z' = chr (ord c + shift)
  | otherwise = chr (ord 'a' - 1 + (shift - (ord 'z' - ord c)))

rotUpper c
  | ord c + shift <= ord 'Z' = chr (ord c + shift)
  | otherwise = chr (ord 'A' - 1 + (shift - (ord 'Z' - ord c)))

rot c
  | 'a' <= c && c <= 'z' = rotLower c
  | 'A' <= c && c <= 'Z' = rotUpper c
  | otherwise = c    

main :: IO ()
main = do
  print $ ord 'a'
  print $ ord 'b'
  print $ ord 'z'
  print $ ord 'A'
  print $ ord 'B'
  print $ ord 'Z'

  print $ rot 'a'
  print $ rot 'b'
  print $ rot 'z'
  print $ rot (rot 'a')
  print $ rot (rot 'b')
  print $ rot (rot 'z')
  print $ rot 'A'
  print $ rot 'B'
  print $ rot 'Z'
  print $ rot (rot 'A')
  print $ rot (rot 'B')
  print $ rot (rot 'Z')

