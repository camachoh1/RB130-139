# Write a method that returns all of the fields in a haphazardly formatted string. A variety of spaces, tabs, and comas separate the fields, with possibly multiple occurences of each delimites.


def fields(str)
  str.split(/[ \t,]+/) # /t is used because we want to split at spaces and tabs, not other whitespace characters.
end

p fields("Pete,201,Student")
# -> ["Pete", "201", "Student"]

p fields("Pete \t 201    ,  TA")
# -> ["Pete", "201", "TA"]

p fields("Pete \t 201")
# -> ["Pete", "201"]

p fields("Pete \n 201")
# -> ["Pete", "\n", "201"]