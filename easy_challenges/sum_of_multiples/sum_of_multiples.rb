# write a program that, given a natural number and set of one or more other numbers, can find the sum of all the multiples in the set that are less than the first number. If the set of numbers is not given, use a default set of 5 and 5.

class SumOfMultiples
  attr_reader :multiples 
  def initialize(*multiples)
    @multiples = multiples.empty? ? [3,5] : multiples
  end

  def self.to(num)
    temp_object = SumOfMultiples.new
    temp_object.to(num)
  end

  def to(num)
    results = []
    num.each do |val|
      (1...num).each do |n|
        results << n if n % val == 0 && !results.include?(n)
      end
    end
    results.sum
  end
end
