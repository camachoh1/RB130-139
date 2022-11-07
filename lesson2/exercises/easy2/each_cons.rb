
def each_cons(arr)
  index = 0
  loop do 
    break if index + 1 >= arr.size
    yield(arr[index], arr[index + 1])
    index += 1
  end
  nil
end 


hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end
p result == nil
p hash 

hash = {}
result = each_cons([]) do |value1, value2|
  hash[value1] = value2
end
p hash == {}
p result == nil

hash = {}
result = each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
p hash == {'a' => 'b'}
p result == nil


