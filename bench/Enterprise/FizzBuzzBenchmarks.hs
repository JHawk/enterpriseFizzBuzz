import Criterion.Main

import Enterprise.FizzBuzz

main = defaultMain fizzBuzzBenchmarks 

fizzBuzzBenchmarks = 
  [
    bgroup "fizzbuzz head normal form" [ 
        bench "10"   $ nf fizzbuzz 10
      , bench "100"  $ nf fizzbuzz 100
      , bench "1000" $ nf fizzbuzz 1000
    ],
    bgroup "fizzbuzz weak head normal form" [ 
        bench "10"   $ whnf fizzbuzz 10
      , bench "100"  $ whnf fizzbuzz 100
      , bench "1000" $ whnf fizzbuzz 1000
    ]
  ]
