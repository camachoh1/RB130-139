=begin 

Write a method that takes an array as argument, and a block that returns true or false depending on the value of the array element passed to it. The method should return a count of the number of times the block returs true.

you may not use array#count or Enumerable#count in your solution.

=end

def count(arr)
  counter = 0

  arr.each do |item|
    counter += 1 if yield(item)
  end
  counter
end

p count([1,2,3,4,5]) { |value| value.odd? } == 3
p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
p count([1,2,3,4,5]) { |value| true } == 5
p count([1,2,3,4,5]) { |value| false } == 0
p count([]) { |value| value.even? } == 0
p count(%w(Four score and seven)) { |value| value.size == 5 } == 2