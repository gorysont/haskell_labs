{-
Это многострочный комментарий
-}
-- однострочный комментарий

max3 :: Int -> Int -> Int -> Int -- сигнатура функции max3
max3 a b c = max (max a b) c

min3 :: Ord a => a -> a -> a -> a
min3 a b c = min (min a b) c

sort2 :: Int -> Int -> (Int, Int)
sort2 x y = (min x y, max x y)

bothTrue :: Bool -> Bool -> Bool
bothTrue True True = True
bothTrue True False = False
bothTrue False True = False
bothTrue False False = False

bothTrue' :: Bool -> Bool -> Bool
bothTrue' True x = x
bothTrue' _ _ = False

-- data Bool = True | False

solve2 :: Double -> Double -> (Bool, Double)
solve2 a b = if (a /= 0) then (True, -b/a) else (False, 0.0)

solve22 a b | a == 0 = (False, 0.0)
            | otherwise = (True, -b/a)
            
solve23 a b = case a == 0 of
                   True -> (False, 0.0)
                   False -> (True, -b/a)
                
solve' 0 b = (False, 0.0)
solve' a b = (True, -b/a)

-- №6 реализовать ф-ю length', вычислить кол-во элементов списка
length' :: [a] -> Int
length' [] = 0
length' (x:xs) = 1 + length' xs

-- #7 Реализовать ф-ю вычисления sum целоч. эл. списка

sum' :: [Int] -> Int
sum' [] = 0
sum' (x:xs) = x + sum' xs

-- #8 Реализовать ф-ю вычисления prod целоч. эл. списка

prod' :: [Int] -> Int
prod' [] = 1
prod' (x:xs) = x * prod' xs
