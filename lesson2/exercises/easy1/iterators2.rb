=begin 

Write a method called all? that behaves similarly to any? for Arrays. it should take an Array as an argument, and a block. it should return true if the block returns true for all of the element values. Otherwise, it should return false.

Your method should stop processing elements of the Array as soon as the block returns false.

if the array is empty, all? should return true, regardless of how the block is defined.

Your method may not use any standard ruby method that is named all?, any?, none?. or none?

=end 


def all?(arr)
  counter = 0

  arr.each do |num|
    return false if !yield(num)
    counter += 1
  end
  counter == arr.size
end


#LS solution

def all?(collection)
  collection.each {|item| return false unless yield(item)}
end

p all?([1, 3, 5, 6]) { |value| value.odd? } == false
p all?([1, 3, 5, 7]) { |value| value.odd? } == true
p all?([2, 4, 6, 8]) { |value| value.even? } == true
p all?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
p all?([1, 3, 5, 7]) { |value| true } == true
p all?([1, 3, 5, 7]) { |value| false } == false
p all?([]) { |value| false } == true