=begin 

Write a method that does the same thing as Range#step, but does not operate on a range. Instead, your method should take 3 arguments: the starting value, the ending value, and the step value to be applied to each iteration. Your method should also take a block to which it will yield (or call) successive iteration values.

=end

def step(init_val, end_val, step_val)
  current_value = init_val
  loop do
    yield(current_value)
    break if current_value + step_val > end_val
    current_value += step_val
  end
  current_value
end

p step(1, 10, 3) { |value| puts "value = #{value}" }