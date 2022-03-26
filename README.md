# GetSharpsAndFlats
This is a simple Haskell program that takes an input from the user, a key of the 
Major scale, and returns how many sharps/flats there are as well as where they 
are located location on staff paper. This program illustrates my ability to 
perform operations on lists to create correct inputs for the function, my 
ability to cycle through lists to return a desired result and draw list 
comparisons, it demonstrates my understanding of the correct syntax for function 
declarations as well as their bodies and as conditional statements, error 
messages, all while showcasing my ability to learn quickly, as I had just picked 
up this language since yesterday.

Oh, and sharing a small piece of my love for music of course!

QUICK NOTE: For those who don't know, sharps may be represented with a "#".

Future renditions can be improved and I intend to keep going with this little 
program. Improvements would include the following:

1) Expand beyond just the Major scale. Through manipulations of the order of 
sharps/flats lists, you could get sharps and flats for all seven modes and not 
just the Major scale. 

2) Through a manipulation of the sharps/flats lists, you could get the number of 
sharps/flats as well as where they're located no matter how many sharps/flats 
the user enters in their initial input. For example, if the user would like to 
know the sharps/flats for C####, that would be possible.

HOW TO USE:

To use the program, the user can compile the file, run, and then when prompted, 
enter the key of the Major scale that they would like to know the sharps/flats 
for. The answer must be valid. I.e., it must consist of 

1) A valid letter, A-G 
2) Followed by "flat" for a flat key, "N" for a natural key, or "#" for a sharp 
key.

NOTE: 

For input cases such as G# or Fflat, notice that the number of sharps/flats 
exceeds the number of sharps/flats that can be represented in the list of 
FCGDAEB. FCGDAEB is only seven letters but G# contains 8 sharps. This means 
there is a double sharp located at F, as it would actually be on a sheet of 
staff paper, because when the order of sharps/flats is exceeded, the list is 
simply cycled through again.
G# for example would look like:

  FCGDAEB*F*
  
  i.e.:
  
  *F##*,C#,G#,D#,A#,E#,B#
  
And Fflat likewise would look like:

  BEADGCF*B*
  
  i.e.:
  
  *Bflatflat*,Eflat,Aflat,Dflat,Gflat,Cflat,Fflat

QUICK NOTE: keys with double sharps/flats (or more) are merely theoretical keys 
to illustrate the point of re-cycling through the order of flats, and aren't in 
fact commonly used keys.
