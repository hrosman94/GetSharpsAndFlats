import Data.List
import System.IO

getSharpsAndFlats (letter, anySFNs) = 
 do
  if (letter == "F" && anySFNs == "flat")
    then putStrLn("    "++letter ++ anySFNs ++ " has 8 flats")
  else if (letter == "C" && anySFNs == "flat")
    then putStrLn("    "++letter ++ anySFNs ++ " has 7 flats")
  else if (letter == "G" && anySFNs == "flat")
    then putStrLn("    "++letter ++ anySFNs ++ " has 6 flats")
  else if (letter == "D" && anySFNs == "flat")
    then putStrLn("    "++letter ++ anySFNs ++ " has 5 flats")
  else if (letter == "A" && anySFNs == "flat")
    then putStrLn("    "++letter ++ anySFNs ++ " has 4 flats")
  else if (letter == "E" && anySFNs == "flat")
    then putStrLn("    "++letter ++ anySFNs ++ " has 3 flats")
  else if (letter == "B" && anySFNs == "flat")
    then putStrLn("    "++letter ++ anySFNs ++ " has 2 flats")
  else if (letter == "F" && anySFNs == "N")
    then putStrLn("    "++letter ++ anySFNs ++ " has 1 flat")
  else if (letter == "C" && anySFNs == "N")
    then putStrLn("    "++letter ++ anySFNs ++ " has 0 sharps or flats")
  else if (letter == "G" && anySFNs == "N")
    then putStrLn("    "++letter ++ anySFNs ++ " has 1 sharps")
  else if (letter == "D" && anySFNs == "N")
    then putStrLn("    "++letter ++ anySFNs ++ " has 2 sharps")
  else if (letter == "A" && anySFNs == "N")
    then putStrLn("    "++letter ++ anySFNs ++ " has 3 sharps")
  else if (letter == "E" && anySFNs == "N")
    then putStrLn("    "++letter ++ anySFNs ++ " has 4 sharps")
  else if (letter == "B" && anySFNs == "N")
    then putStrLn("    "++letter ++ anySFNs ++ " has 5 sharps")
  else if (letter == "F" && anySFNs == "#")
    then putStrLn("    "++letter ++ anySFNs ++ " has 6 sharps")
  else if (letter == "C" && anySFNs == "#")
    then putStrLn("    "++letter ++ anySFNs ++ " has 7 sharps")
  else if (letter == "G" && anySFNs == "#")
    then putStrLn("    "++letter ++ anySFNs ++ " has 8 sharps")
  else if (letter == "D" && anySFNs == "#")
    then putStrLn("    "++letter ++ anySFNs ++ " has 9 sharps")
  else if (letter == "A" && anySFNs == "#")
    then putStrLn("    "++letter ++ anySFNs ++ " has 10 sharps")
  else if (letter == "E" && anySFNs == "#")
    then putStrLn("    "++letter ++ anySFNs ++ " has 11 sharps")
  else if (letter == "B" && anySFNs == "#")
    then putStrLn("    "++letter ++ anySFNs ++ " has 12 sharps")
  else 
    putStrLn("ERROR: No condition met in getSharpsAndFlats")

  putStrLn("     **terminating**")

main = do
       let letters = ["A","B","C", "D", "E", "F", "G"]
       let sharpsFlatsOrNats = ["#", "flat", "N"]
       
       putStrLn "What key in the major scale do you want sharps/flats for?"
       input <- getLine
       putStrLn ("  You want sharps/flats for: "++ input)

       let letter = take 1 input
       let isValid = elem letter letters

       let anySFNs = drop 1 input
       let hasSFNs = elem anySFNs sharpsFlatsOrNats

       if (isValid && hasSFNs)
         then do 
              putStrLn("   Key is valid") 
              getSharpsAndFlats(letter, anySFNs)
         else do
              putStrLn("ERROR: Key is invalid")
              putStrLn("**terminating**")
