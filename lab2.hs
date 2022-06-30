-- #2.1

avg' :: [Double] -> Double
avg' a = if (length a /= 0) then (sum a / fromIntegral(length a)) else error "None"

avg2 :: [Double] -> Double

avg2 a | length a == 0 = error "None"
       | otherwise = (sum a / fromIntegral(length a))
       
avg3 :: [Double] -> Double
avg3 a = case length a == 0 of
              True -> error "None"
              False -> (sum a / fromIntegral(length a))
              
avg4 :: [Double] -> Double
avg4 [] = error "None"
avg4 a = (sum a / fromIntegral(length a))

-- #2.3

sum_list :: [Int] -> [Int] -> [Int]
sum_list [] [] = []
sum_list (x:xs) (y:ys) = (x + y):sum_list xs ys
