=begin 

Write a method that takes a sorted array of integers as an argument, and returns an array that includes all of the missing integers (in order) between the first and last element of the argument. 

=end 

def missing(arr)
  complete_range = (arr.first..arr.last).to_a
  complete_range - arr
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []