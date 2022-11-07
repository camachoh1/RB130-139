=begin

Write a method called map that behaves similarly for arrays. It should take an array as an argument, and a block. It should return a new array that contains the return values produced by the block for each element of the original array.

If the array is empty, map should return an empty array, regardless of how the block is defined. 

your method may use, each, each_with_object, each_with_index, inject, loop, for, while or until to iterate through the array passed in as an argument, but most not use any other methods that iterate through an array or any other collection.
=end 



def map(arr)
  counter = 0
  results = []

  while counter < arr.size
    results << yield(arr[counter])
    counter += 1
  end
  results
end 

p map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
p map([]) { |value| true } == []
p map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
p map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
p map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]