=begin

Write your own version of zip that does the same type of operation. It should take two arrays as arguments, and return a new array (the original arrays should not be changed.) Do not use the built-in array#zip method. You may assume both input arrays have the same number of elements.

=end 


def zip(arr1, arr2)
  counter = 0
  results = []

  while counter < arr1.size
    results << [arr1[counter], arr2[counter]]
    counter += 1
  end
  results
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]