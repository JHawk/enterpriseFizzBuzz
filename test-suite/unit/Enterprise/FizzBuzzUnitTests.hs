import Test.Framework (defaultMain, testGroup)
import Test.Framework.Providers.HUnit
import Test.HUnit

import Enterprise.FizzBuzz

main = defaultMain fizzBuzzUnitTests

fizzBuzzUnitTests = 
  [
    testGroup "describing fizzbuzz" [
      testCase "should fail" on_purpose,
      testCase "should return 1" one_is_entered,
      testCase "should return Fizz" three_is_entered
    ]
  ]

on_purpose = fizzBuzz 10 @?= "not here"

one_is_entered = fizzBuzz 1 @?= "1"

three_is_entered = fizzBuzz 3 @?= "Fizz"

