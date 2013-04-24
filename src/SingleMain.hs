module Main(main) where

import Enterprise.FizzBuzz
import System.Environment

main = do
    putStrLn "Which number should I FizzBuzz?"
    n <- getLine
    putStrLn $ show $ fizzBuzz $ (read n :: Int)

