-- caeser cipher

-- doesn't quite work for negative shifts

cipher :: [Char] -> Int -> [Char]
cipher [] _ = []
cipher a n = (rotate (head a) n) : (cipher (tail a) n)

rotate :: Char -> Int -> Char
rotate a n = if n==1
             then next a
             else if n > 1
                  then rotate a (n-1)
                  else rotate a (n+1)

next :: Char -> Char
next a = if a /= 'z'
         then succ a
         else 'a'
