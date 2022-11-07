class RomanNumeral

  ROMAN_NUMS = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }
  
  def initialize(number)
    @number = number
  end

  def to_roman
    p num_digits = digits(@number)
    
  end
    
  def digits(num)
    num.digits.map.with_index {|n, idx| n * 10**idx}
  end
end

p RomanNumeral.new(3000).to_roman