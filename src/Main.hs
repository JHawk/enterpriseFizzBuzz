module Main(main) where

import Enterprise.FizzBuzz
import System.Environment

main = do
    putStrLn "How many numbers should I FizzBuzz?"
    n <- getLine
    putStrLn $ show $ fizzBuzzRange $ (read n :: Int)



