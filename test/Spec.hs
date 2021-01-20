import Test.QuickCheck
import Test.QuickCheck.Function
import Mult
import Ternar


main :: IO ()
main = do
  quickCheck first
  quickCheck second
