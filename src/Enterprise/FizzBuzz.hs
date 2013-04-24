module Enterprise.FizzBuzz (fizzBuzz, fizzBuzzRange) where

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

fizzBuzzRange :: Int -> String
fizzBuzzRange limit = 
  foldl fizzJoin "" [1..limit]
  
  where fizzJoin acc i =  acc ++ " " ++ fizzBuzz i 
