
module Uebung_2 where

import Data.List

-- | Folgende Funktion prüft, ob erste Parameter ein prefix von zweite Parameter ist. 
startStrOf :: String -> String -> Bool
startStrOf "" y = True
startStrOf x "" = False
startStrOf (x:xs) (y:ys) = x == y && startStrOf xs ys  

-- | Folgende Funtion prüft, ob erste Parameter in der zweite Parameter vorkommt. 
subStrOf :: String -> String -> Bool
subStrOf "" y = True
subStrOf x "" = False
subStrOf x y = isInfixOf x y

-- | Prüft, ob eingegebene char eine konsonant ist
isNotVowel :: Char -> Bool
isNotVowel c = notElem c "aeiou"

-- | Jede Konsonant wird verdoppelt und zwischen ein 'o' eingefügt.
robber :: String -> String
robber [] = []
robber (x:xs)
    | length (x:xs) < 1 = ""
    | isNotVowel x = x : 'o' : x : robber xs 
    | True = x : robber xs 



-- | Prüft, ob eingegebene char eine consonant ist
consonant :: Char -> Bool
consonant c = notElem c "aeiou"

-- | Prüft, ob char eine vokal ist
isVowel:: Char -> Bool
isVowel c
    |elem c "aeiou" = True
    | True = False
    
    
helper :: String -> Bool
helper [] = True
helper str = str == reverse str 

 
-- | Diese Frunktion ist eine dekodierung von robber ist. 
unrobber :: String -> String
unrobber "" = []
unrobber (x:xs)
    | length (x:xs) <= 1 = (x:xs)
    | consonant x && helper ( fst (splitAt 3 (x:xs))) = x : unrobber (drop 3 (x:xs))
    | otherwise = x : unrobber xs 
