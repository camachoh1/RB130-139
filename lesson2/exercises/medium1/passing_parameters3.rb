items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "we've finished gathering"
end

# gather(items) do |*produce, wheat|
#   puts produce.join(', ')
#   puts wheat
# end

# gather(items) do |apples, *vegetables, wheat|
#   puts apples
#   puts vegetables.join(', ')
#   puts wheat
# end

# gather(items) do |apples, *assorted|
#   puts item
#   puts assorted.join(', ')
# end

gather(items) do |apples, corn, cabbage, wheat|
  puts "#{apples}, #{corn}, #{cabbage}, and #{wheat}"
end

