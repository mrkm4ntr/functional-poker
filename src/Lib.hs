module Lib
    ( someFunc
    ) where

import System.Random.Shuffle
import Cards

someFunc :: IO ()
someFunc = do
  shuffled <- shuffleM allCards
  print $ take 5 shuffled
