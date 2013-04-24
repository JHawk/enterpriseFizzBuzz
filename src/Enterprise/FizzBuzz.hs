-- |
-- Module      : Enterprise.FizzBuzz
-- Copyright   : (c) 2013 Josh Hawkins & Mike Bethany
--
-- License     : BSD-style
-- Maintainer  : josh@josh.com
-- Stability   : experimental
-- Portability : GHC
--
-- Putting some Fizz and Buzz in your numbers!


module Enterprise.FizzBuzz 
  (
    functionToPad1,
    functionToPad2,
    functionToPad3,
    functionToPad4,
    functionToPad5,
    functionToPad6,
    functionToPad7,
    functionToPad8,
    functionToPad9,
    functionToPad10,
    functionToPad11,

    -- * More info on fizzBuzz.
    -- $fizzBuzz
    
    fizzBuzz, 
    
    -- * How is this used in Main?
    -- $fizzBuzzRange
    
    fizzBuzzRange) where


functionToPad1 i = undefined
functionToPad2 i = undefined
functionToPad3 i = undefined
functionToPad4 i = undefined
functionToPad5 i = undefined
functionToPad6 i = undefined
functionToPad7 i = undefined
functionToPad8 i = undefined
functionToPad9 i = undefined
functionToPad10 i = undefined
functionToPad11 i = undefined

functionToPadHidden i = undefined

-- courtesy of Mike Bethany @ Haskell Quiz
-- http://www.haskell.org/haskellwiki/Haskell_Quiz/FizzBuzz/Solution_Mikbe
fizz :: Int -> String
fizz x = if x `mod` 3 == 0 then "Fizz" else ""
 
buzz :: Int -> String
buzz x = if x `mod` 5 == 0 then "Buzz" else ""
 
fizzBuzz :: Int -> String
fizzBuzz x = if fizz(x) ++ buzz(x) == "" 
  then show x 
  else fizz(x) ++ buzz(x)

-- | This is a comment with a code example using fizzBuzzRange
--
-- > putStrLn $ show $ fizzBuzzRange $ (read n :: Int)
fizzBuzzRange :: Int -> String
fizzBuzzRange limit = 
  foldl fizzJoin "" [1..limit]
  
  where fizzJoin acc i =  acc ++ " " ++ fizzBuzz i 
