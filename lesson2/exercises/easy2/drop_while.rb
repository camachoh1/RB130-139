=begin 

Write a method called drop_while that behaves similarly for Arrays. It should take an Array as an argument, and a block. It should return all the elements of the Array except those elements at the beginning of the array that produce a truthy value when passed to the block.

If the array is empty, or if the block returns a truthy value for evey element, drop_while should return an empty array

=end 

def drop_while(collection)
  index = 0
  while index < collection.size && yield(collection[index])
    index += 1
  end

  collection[index..-1]
end


p drop_while([1, 3, 5, 6]) { |value| value.odd? } == [6]
p drop_while([1, 3, 5, 6]) { |value| value.even? } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| true } == []
p drop_while([1, 3, 5, 6]) { |value| false } == [1, 3, 5, 6]
p drop_while([1, 3, 5, 6]) { |value| value < 5 } == [5, 6]
p drop_while([]) { |value| true } == []