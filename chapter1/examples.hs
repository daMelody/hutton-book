-- first example: summing numbers
mySum :: Num a => [a] -> a

mySum []     = 0
mySum (n:ns) = n + mySum ns

-- second example: qsort
qsort :: Ord a => [a] -> [a]

qsort []     = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
    where
        smaller = [a | a <- xs, a <= x]
        larger = [b | b <- xs, b > x]

-- third example: sequencing
{-seqn :: [IO a] -> IO [a]

seqn [] = return []
seqn (act:acts) = do x <- act
    xs <- seqn acts
    return (x:xs) -}
