=begin 

Are `/abc/i` and `/[Aa]`[Bb][Cc]` equivalent regex? if not how they differ? can you provide an example of a string that would match one of these regex but not the other

the patterns are equivalent as specified; however, that equivalence may not survive a small modification to either patter. For instance /abcd/i is not equivalent to /[Aa][Bb][Cc]d/. 

