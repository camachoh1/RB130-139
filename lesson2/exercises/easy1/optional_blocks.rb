=begin 

Write a method that takes an optional block. If the block is specified, the method should execute it, and return the value returned by the block. If no block is specified, the method should simply retrun the String 'Does not compute..'
=end


def compute(element)
  if block_given?
    yield(element)
  else
    'Does not compute.'
  end
end

p compute(5) {|element| element + element} == 10
p compute('a') {|element| element + element} == "aa"
p compute('hello') == 'Does not compute.'

p compute { 5 + 3 } == 8
p compute { 'a' + 'b' } == 'ab'
p compute == 'Does not compute.'