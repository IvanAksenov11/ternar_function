module Mult where

import Test.QuickCheck

mult :: Num a => a -> a -> a
mult a b = a * b

commutative_prop :: Int -> Int -> Bool
commutative_prop a b = mult a b == mult b a

associative_prop :: Int -> Int -> Int -> Bool
associative_prop a b c = mult (mult a b) c == mult a (mult b c)

distributive_prop:: Int -> Int -> Int -> Bool
distributive_prop a b c = mult a (b + c) == (mult a b) + (mult a c)

id_el :: Int -> Bool
id_el a = mult 1 a == a

zero_el :: Int -> Bool
zero_el a = mult a 0 == 0

multProperties :: IO ()
multProperties = do quickCheck commutative_prop
                    quickCheck associative_prop
                    quickCheck distributive_prop
                    quickCheck id_el
                    quickCheck zero_el
