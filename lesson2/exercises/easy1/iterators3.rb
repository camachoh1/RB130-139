=begin 

write a method called none? that behaves similarly for arrays. it should take an array as an argument, and a block. it should return true if the block returns false for all of the element values, otherwise it should return false.

your method should stop processing elements of the array as soon as the block returns true.

if the array is empty, none? should return true, regardless of how the block is defined.


=end 


def none?(arr)
  arr.each do |item|
    return false if yield(item)
  end
  true
end

# LS solution using an explicit block.
# The reason for this is that blocks aren't passed down the calling chain by default. Instead, you need to explicitly pass the block to #any?; to do that, #none? must require a block argument with an & as shown in the alternate solution. We then pass &block to any?, where it is treated as if the call to any? included the block. 

def none?(collection, &block)
  !any?(collection, &block)

p none?([1, 3, 5, 6]) { |value| value.even? } == false
p none?([1, 3, 5, 7]) { |value| value.even? } == true
p none?([2, 4, 6, 8]) { |value| value.odd? } == true
p none?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
p none?([1, 3, 5, 7]) { |value| true } == false
p none?([1, 3, 5, 7]) { |value| false } == true
p none?([]) { |value| true } == true