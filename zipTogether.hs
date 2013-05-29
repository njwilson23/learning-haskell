-- this is a function that zips two lists

zipTogether :: [a] -> [b] -> [(a,b)]

zipTogether [] [] = []
zipTogether xs [] = []
zipTogether [] ys = []
zipTogether (x:xs) (y:ys) = (x,y) : zipTogether xs ys

