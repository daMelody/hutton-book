-- question 3: product of a list of numbers
myProduct :: Num a => [a] -> a

myProduct [] = 1  -- base case multiply by 1, since 0 doesn't make sense
myProduct (n:ns) = n * product ns

-- question 4: reverse qsort
reverseQsort :: Ord a => [a] -> [a]

reverseQsort [] = []
reverseQsort (n:ns) = reverseQsort larger ++ [n] ++ reverseQsort smaller 
    where
        smaller = [a | a <- ns, a < n]
        larger = [b | b <- ns, b >= n]
