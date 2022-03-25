import Data.List
import Data.List(intercalate)
import System.IO

getSharpsAndFlats (letter, anySFNs) = 
 do
  let orderOfSharps = ["F","C","G","D","A","E","B"]
  let n = [-1,0..5]

  if anySFNs == "flat"
    then do 
      let flatsList = [x-7 | x <- n]
      let Just i = elemIndex letter orderOfSharps
      let howMany = flatsList !! i
      if howMany < 0
        then do 
          let orderOfFlats = ["B","E","A","D","G","C","F"]
          let yourFlats = take (abs(howMany)) (cycle orderOfFlats)
          let toString = show(length (yourFlats))
          putStrLn(letter++anySFNs++" has "++toString++" flats. The flats are:")
          print(yourFlats)
      else print("ERROR: flat key should always return negative number")
  else if anySFNs == "#"
    then do 
      let Just i = elemIndex letter orderOfSharps
      let sharpsList = [x+7 | x <- n]
      let howMany = sharpsList !! i
      if howMany > 0
      then do 
        let yourSharps = take howMany (cycle orderOfSharps)
        let toString = show(length (yourSharps))
        putStrLn(letter++anySFNs++" has "++toString++" sharp(s). The sharp(s) is(are):")
        print(yourSharps)
      else print("ERROR: sharp key should always return positive number")
  else if anySFNs == "N"
    then do
      let Just i = elemIndex letter orderOfSharps
      let howMany = n !! i
      if howMany < 0
        then do 
          let orderOfFlats = ["B","E","A","D","G","C","F"]
          let yourFlats = take (abs(howMany)) (cycle orderOfFlats)
          let toString = show(length (yourFlats))
          putStrLn(letter++anySFNs++" has "++toString++" flat(s). The flat(s) is(are):")
          print(yourFlats)
      else if howMany > 0 
        then do 
          let yourSharps = take howMany (cycle orderOfSharps)
          let toString = show(length (yourSharps))
          putStrLn(letter++anySFNs++" has "++toString++" sharp(s). The sharps is(are):")
          print(yourSharps)
      else do
          print("C has no sharps/flats")
  else do
    print("ERROR: Invalid entry in anySFNs")

main = do
       let letters = ["A","B","C", "D", "E", "F", "G"]
       let sharpsFlatsOrNats = ["#", "flat", "N"]
       
       putStrLn "What key in the major scale do you want sharps/flats for?"
       input <- getLine
       putStrLn ("You want sharps/flats for: "++ input)

       let letter = take 1 input
       let isValid = elem letter letters

       let anySFNs = drop 1 input
       let hasSFNs = elem anySFNs sharpsFlatsOrNats

       if (isValid && hasSFNs)
         then do  
              getSharpsAndFlats(letter, anySFNs)
         else do
              putStrLn("ERROR: Key is invalid")
              putStrLn("**terminating**")
