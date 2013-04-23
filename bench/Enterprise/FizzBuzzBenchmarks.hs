import Criterion.Main

import Enterprise.FizzBuzz

main = defaultMain fizzBuzzBenchmarks 

fizzBuzzBenchmarks = 
  [
    bgroup "fizzBuzz head normal form" [ 
        bench "10"   $ nf fizzBuzz 10
      , bench "100"  $ nf fizzBuzz 100
      , bench "1000" $ nf fizzBuzz 1000
    ],
    bgroup "fizzBuzz weak head normal form" [ 
        bench "10"   $ whnf fizzBuzz 10
      , bench "100"  $ whnf fizzBuzz 100
      , bench "1000" $ whnf fizzBuzz 1000
    ]
  ]
