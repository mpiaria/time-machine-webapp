module Chapter02.SimpleFunctions.Example
  ( firstOrEmpty,
    (+++),
    reverse2,
    minmax
  )
where

firstOrEmpty :: [String] -> String
firstOrEmpty list =
  if null list
    then "empty"
    else head list

(+++) :: [a] -> [a] -> [a]
left +++ right =
  if null left
    then right
    else head left : (tail left +++ right)

reverse2 :: [a] -> [a]
reverse2 list =
  if null list
    then list
    else reverse2 (tail list) +++ [head list]

minmax :: Ord a => [a] -> (a, a)
minmax list =
  let h = head list
   in if null (tail list)
        then (h, h)
        else (if h < low then h else low, if h > high then h else high)
  where
    low_high = minmax (tail list)
    low = fst low_high
    high = snd low_high
