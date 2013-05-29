-- Binary tree with integer nodes

module Homework5_BinTree
    (BinTree(..),
     add)
where


data BinTree a = Node Int (BinTree a) (BinTree a) | TerminalNode Int
    deriving (Show, Eq)


-- Sum all the nodes
add :: BinTree a -> Int
add (Node x t1 t2) = x + (add t1) + (add t2)
add (TerminalNode x) = x

