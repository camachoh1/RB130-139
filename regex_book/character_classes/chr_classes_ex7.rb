=begin 

Are /(ABC|abc)/ and /[Aa][Bb][Cc]/ equivalent regex? if not, how do they differ? can you provide an example of a string that would match one of these regex, but not the other? 

  The patterns are not equivalent. The former matches nothing but the strings `ABC` or `abc`; the latter matches any string consisting of letters `a`, `b`, `c` in sequence, regardless of case. The string `Abc` would matchthe second pattern but not the first.

=end
