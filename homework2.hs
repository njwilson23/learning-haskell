-- define recursive factorial function

facA n = if n > 1
         then n*facA(n-1)
         else 1

facB n = foldl (*) 1 [1..n]

