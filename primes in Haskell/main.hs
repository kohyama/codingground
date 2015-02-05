primeNumbers = f 2
  where
    f x = x:(f $
             head $
             dropWhile (\n -> elem 0 $
                              map (mod n) $
                              takeWhile (\c -> c * c <= n) primeNumbers)
                       [(succ x)..])
