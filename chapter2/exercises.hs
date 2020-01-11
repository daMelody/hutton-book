-- question 3: fix syntactic errors
{- 
N = a 'div' length xs
    where
            a = 10
           xs = [1,2,3,4,5]
-}

myFunc :: Int
myFunc = a `div` length xs  -- backtics instead of single quotes, fxn names are camelCase
    where
        a = 10
        xs = [1,2,3,4,5]  -- indentation matters, match first char of line, not the equals sign


-- question 4: implementations of LAST fxn from other library fxns
myLast :: [a] -> a
myLast list = head (reverse list)

myLast2 :: [a] -> a
myLast2 list = list !! (length list - 1)


-- question 5: implementations of INIT fxn from other library fxns
myInit :: [a] -> [a]
myInit list = reverse (tail (reverse list))

myInit2 :: [a] -> [a]
myInit2 list = take (length list - 1) list

