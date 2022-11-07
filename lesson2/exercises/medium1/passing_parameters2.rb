
birds = ['crow', 'finch', 'hawk', 'eagle']

def types(birds)
  yield(birds)
end

types(birds) do |*bird1|
  puts bird1
end

