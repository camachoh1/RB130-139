# Base20 digits include the decimal digits 0 through 9, and the letters A through J in upper or lowercase. Write a regex that matches base 20 digits. Test it with these strings. 

0xDEADBEEF
1234.5678
Jamaica
plow ahead

# there should be 28 matches. 

/[0-9a-jA-J]/