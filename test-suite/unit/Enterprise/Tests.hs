import Test.Framework (defaultMain, testGroup)
import Test.Framework.Providers.HUnit
import Test.HUnit

import Enterprise.FizzBuzz

main = defaultMain fizzBuzzTests

fizzBuzzTests = [
           testGroup "Fizz Buzz Unit Test Cases" [
                testCase "should return empty string" zero_is_entered
             ]
        ]

zero_is_entered = fizzbuzz 0 @?= ""

