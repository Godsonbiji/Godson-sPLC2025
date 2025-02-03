module Intro2 where

name = "Alice"

name2 = if name /= "" then name else "no name"

pname3 = print "Bob"

myprogram = print (1 + m)  
m = 1                     


prg1 = do
  print "hello " 
  print name  


prg1' = sequence_ [print "hello ", print name]

prg2 = do
  line <- getLine
  putStrLn ("you typed: " ++ line)

main =
  do
  putStrLn name 
  
  pname3 
  myprogram; prg1; prg2 


toString value = show value


greet1 = "hello " ++ name ++ (toString 123)

greet2 = (++) "hello " name

greet3 = concat ["hello ", name, toString 123]
