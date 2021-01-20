module Ternar
  (
  ifte,
  first,
  second
  ) where

import Test.QuickCheck
import Test.QuickCheck.Function

ifte :: Bool -> a -> a -> a

ifte False _ b = b
ifte True  a _ = a

first :: Fun Int Int -> Bool -> Int -> Int -> Bool
first f b a c = ifte b (apply f a) (apply f c) == apply f (ifte b a c)


second :: Bool -> Int -> Int -> Bool
second b a c = ifte b a c == ifte (not b) c a




