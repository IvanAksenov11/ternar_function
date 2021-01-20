import Test.QuickCheck
import Test.QuickCheck.Function
import Mult
import Ternar


main :: IO ()
main = do
  print $ "testing ternar function"
  quickCheck first
  quickCheck second
  print $ "testing mult function"
  quickCheck commutative_prop
  quickCheck associative_prop
  quickCheck distributive_prop
  quickCheck id_el
  quickCheck zero_el
