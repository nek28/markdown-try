module Tree where

import Prelude hiding (traverse)

data Tree a = Node a (Tree a) (Tree a) | Leaf a
    deriving (Eq)

--traversing the tree means transforming it to a list
traverse :: Tree a -> [a]
traverse (Leaf a) = [a]
traverse (Node a left right) = 
    a : (traverse left ++ traverse right)

instance Show a => Show (Tree a) where
    show tr = unlines $ map show (traverse tr)