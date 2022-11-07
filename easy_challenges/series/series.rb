class Series
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def slices(size)
    raise(ArgumentError) if size > num.size
    results = []
    nums_arr = num.chars.map(&:to_i)

    (0...nums_arr.size).each do |init|
      results << nums_arr[init, size] unless nums_arr[init, size].size < size
    end
    results
  end
end
