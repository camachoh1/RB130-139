=begin 

Test the pattern `/\s../s\` from the previous exercise agains this text:

Doc in a big red box.
Hup! 2 3 4

Observe that one of the three-letter in this text match the pattern; it also matches `2 3`. Why is it that this pattern doesn't include the three-letter words 'Doc', 'red', 'box', or 'Hup', but it does match '2 3'?

Solution:

Note that in all of these cases, the "math is five characters long" (defined by the number of perious in between the first and last /s)

  - Doc doesn't match since Doc doesn't follow any whitespace

  - big matches since it is three chararacters with both leading and trailing whitespace.

  - big matches since it is three characters with both leading and trailing whitespace.

  - red doesn't match since the regex engine consumes the space character that precedes red when it matches big (note the trailing space). Once consumed as part of a match, the character is no longer available for subsequent matches. (/sbig/sred) <- consumes the space before red

  - box doesn't match since a period follows it.

  - Hup doesn't match since an exclamation point follows it.

  - `2 3` matches since `2 3` is three characters long and it has both leading and trailing whitespace.