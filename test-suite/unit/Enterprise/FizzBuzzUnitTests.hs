import Test.Framework (defaultMain, testGroup)
import Test.Framework.Providers.HUnit
import Test.HUnit

import Enterprise.FizzBuzz

main = defaultMain fizzBuzzUnitTests

fizzBuzzUnitTests = 
  [
    testGroup "describing fizzbuzz" [
      testCase "should return empty string" zero_is_entered,
      testCase "should fail" on_purpose
    ]
  ]

zero_is_entered = fizzBuzz 0 @?= ""

on_purpose = error "Boom!"



