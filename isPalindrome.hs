-- detect whether a list a palindrome

isPalindrome :: Eq a => [a] -> Bool
isPalindrome []     = True
isPalindrome [s]    = True
isPalindrome [s,t]  = s==t
isPalindrome s
        | isPalindrome (take ((length s) - 2) (tail s)) 
                                && (head s == last s)   = True
        | otherwise                                     = False

