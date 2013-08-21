-- reverse the text in an input file

module Main where

main = do
    input <- readFile "homework8_input.txt"
    writeFile "homework8_output.txt" (reverse input)

