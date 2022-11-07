class PerfectNumber
  def self.classify(num)
    raise(StandardError) if num < 0
    sum = sum_factors(num)

    if sum == num
      'perfect'
    elsif sum < num
      'deficient'
    else
      'abundant'
    end
  end

  class << self
    private

    def sum_factors(num)
      divisors = []
      1.upto(num - 1) do |n|
        divisors << n if num % n == 0
      end
      divisors.sum
    end
  end
end
