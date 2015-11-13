module Cards 
    ( Suit(..) 
    , Card
    , allCards
    , cardSuit
    , cardNumber
    ) where

data Suit = Hearts | Diamonds | Clubs | Spades
  deriving (Eq, Ord, Enum)

instance Show Suit where
  show Hearts = "❤️"
  show Diamonds = "🔶"
  show Clubs = "♣️️"
  show Spades = "♠️︎"

data Card = Card Int Suit
  deriving (Eq, Ord)

showCardNumber :: Int -> String
showCardNumber 14 = "A_"
showCardNumber 13 = "K_"
showCardNumber 12 = "Q_"
showCardNumber 11 = "J_"
showCardNumber 10 = "10"
showCardNumber x = (show x) ++ "_"

instance Show Card where
  show (Card i s) = showCardNumber i ++ show s ++ " "

allCards :: [Card]
allCards = do
  suit <- [Hearts ..]
  i <- [2..14]
  return $ Card i suit

cardSuit :: Card -> Suit
cardSuit (Card _ suit) = suit

cardNumber :: Card -> Int
cardNumber (Card i _) = i
