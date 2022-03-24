# GetSharpsAndFlats
This is a simple Haskell program that takes in a user's input and returns a 
desired result. The input is is a key for a major scale for which the user would 
like to know the how many sharps and flats there are. This program illustrates 
my ability to use operations on lists to create inputs for the function, 
it demonstrates my understanding of the correct syntax for function declarations 
as well as their bodies, as well as conditional statements, error messages, and 
showcasing my ability to learn quickly, as I had just picked up this language a 
handful of hours ago.

All while sharing a small piece of my love for music!

QUICK NOTE: For those who don't know, sharps may be represented with a "#".

Future renditions can be improved and I intend to keep going with this little 
program. Improvements would include the following:

1) The amount of sharps and flats between Fflat (the most flats) up until B# 
(the most sharps) can all be represented in a list, since flats can be 
effectively mapped to negative numbers and sharps to positive numbers 
(with Fflat being the lowest at -8 or 8 flats, and the highest being B# with +12 
or 12 sharps). Doing so would allow me to avoid the many conditional statements 
I have in the getSharpsAndFlats function. It would also allow me to,

2) Expand beyond just the major scale. By numerically representing the sharps 
and flats for any given key, as well as through a simple manipulation of the 
another new list which would include the order of sharps and flats, you could 
get sharps and flats for all seven modes and not just the major scale. 

4) Also by including a list that includes the order of sharps and flats, the
program could return where the shraps/flats are located on the staff paper, and
not just the number of sharps and flats.

3) Numerically representing the sharps and flats for any given key would also
allow the user to get the number of sharps and flats for any amount of 
sharps/flats that they enter in their initial input. For example, if the user 
would like to know the sharps/flats for C####, they could.

HOW TO USE:

To use, the user can compile the file, run, and then when prompted, enter the
key of the major scale that they would like to know how many sharps/flats there 
are. The answer must be valid. I.e., it must consist of 

1) A valid letter, A-G 
2) Followed by flat for a flat key, N for a natural key, or # for a sharp key.
