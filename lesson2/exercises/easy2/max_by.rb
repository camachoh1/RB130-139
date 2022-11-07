
def max_by(arr)
  return nil if arr.empty?

  max_pair = [arr[0],yield(arr[0])]

  arr.each do |item|
    max_return = yield(item)
    max_pair = [item, max_return] if max_return > max_pair.last
  end
  max_pair[0]
end


p max_by([1, 5, 3]) { |value| value + 2 } == 5
p max_by([1, 5, 3]) { |value| 9 - value } == 1
p max_by([1, 5, 3]) { |value| (96 - value).chr } == 1
p max_by([[1, 2], [3, 4, 5], [6]]) { |value| value.size } == [3, 4, 5]
p max_by([-7]) { |value| value * 3 } == -7
p max_by([]) { |value| value + 5 } == nil