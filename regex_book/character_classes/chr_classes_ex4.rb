# Write a regex that matches any letter except x or X. Test it with these strings:

0x1234
Too many XXXXXXXXXXxxxxxxXXXXXXXXXXXX to count.
The quick brown fox jumps over the lazy dog
THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG

# There should be 82 matches.

/[^x]/i # wrong because this answer matches everything except `x` and `X`. we asked for an answer that matches any letter other than `x` or `x`

/[A-WYZa-wyz]/