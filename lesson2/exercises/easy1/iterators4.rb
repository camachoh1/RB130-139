=begin 

Write a method called one? that takes an array as argument, and a block. It should return true if the block returns true for exactly one of the element values. otherwise it should return false.

Your method should stop processing elements of the Array as soon as the block returns true a second time.

if the array is empty, one? should return false, regardless of how the block is defined. 

=end 

def one?(arr)
  one = 0

  arr.each do |item|
    one += 1 if yield(item)
    return false if one > 1
  end
  one == 1
end



p one?([1, 3, 5, 6]) { |value| value.even? }    == true
p one?([1, 3, 5, 7]) { |value| value.odd? }     == false
p one?([2, 4, 6, 8]) { |value| value.even? }    == false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p one?([1, 3, 5, 7]) { |value| true }           == false
p one?([1, 3, 5, 7]) { |value| false }          == false
p one?([]) { |value| true }                     == false