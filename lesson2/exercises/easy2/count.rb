def count(*arguments) # *arguments turns every single argument into an array of elements which we then use in order to iterate when making the count.
  total = 0
  arguments.each { |item| total += 1 if yield(item)}
  total
end