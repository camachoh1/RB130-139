# write a regex that matches any character that is not aletter. Test it with these strings:

0x1234abcd
1,000,000,000s and 1,000,000,000s.
THE quick BROWN fox JUMPS over THE lazy DOG!

# there should be 45-46 matches.

/[^a-zA-Z]/ || /[a-z]/i