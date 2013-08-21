-- estimate pi with a Gregory summation


greg :: Int -> Double
greg x = 4 * (-1)^(x+1) / (2*k-1)
    where k = fromIntegral x


--estimate = foldl (+) 0 (map greg [1..20])


--print estimate

