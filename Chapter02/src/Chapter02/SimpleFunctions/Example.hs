module Chapter02.SimpleFunctions.Example
  ( firstOrEmpty,
    (+++),
    reverse2
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
