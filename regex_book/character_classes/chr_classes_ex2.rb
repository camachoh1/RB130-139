# write a regex that matches any of the strings `cat`, `cot`, `cut`, `bat`, `bot`, or `but`, regardless of case. Test with this text:

My cats, Butterscotch and Pudding, like to
sleep on my cot with me, but they cut my sleep
short with acrobatics when breakfast time rolls
around. I need a robotic cat feeder.

# the solution should be nine matches

/[bc][aou]t/i