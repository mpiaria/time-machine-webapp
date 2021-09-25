module Chapter02.SimpleFunctions.Example
  ( firstOrEmpty,
  )
where

firstOrEmpty :: [[Char]] -> [Char]
firstOrEmpty list =
  if null list
    then "empty"
    else head list
