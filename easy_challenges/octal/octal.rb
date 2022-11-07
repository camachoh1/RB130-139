# # implement octal to decimal conversion. Given an octal input string, your program should produce a decimal output. Treat invalid input as octal 0.

# #not the right solution but here I turned decimals into octal numbers.

# # class Octal
# #   attr_reader :num_str
# #   def initialize(num_str)
# #     @num_str = num_str
# #   end

# #   def to_decimal
# #     num = num_str.to_i
# #     octal_num = []
# #     octal_num.unshift(num.divmod(8)[1])
# #     quotient = num.divmod(8)[0]
    
# #     while quotient > 0
# #       octal_num.unshift(quotient.divmod(8)[1])
# #       quotient = quotient.divmod(8)[0] 
# #     end
# #     octal_num.join.to_i
# #   end
# # end

# # class Octal
# #   VALID_DIGITS = (0..7).to_a
# #   attr_reader :num_str

# #   def initialize(num_str)
# #     @num_str = num_str if num_str =~ /[^0-9]/ 
# #   end

# #   def to_decimal
# #     return 0 if num_str.nil?
# #     digits = num_str.split('').reverse

# #     octal_num = []

# #     digits.each_with_index do |digit, index|
# #       if VALID_DIGITS.include?(digit.to_i)
# #         octal_num << (digit.to_i * 8**index)
# #       else 
# #         return 0
# #       end
# #     end
# #     octal_num.inject(:+)
# #   end
# # end

# # My solution works but there are some redundancies and validations that are technically wrong in comparison with the LS solution. 

# my solution on second pass:
class Octal
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def to_decimal
    return 0 if !valid_octal?(num)
    decimal = 0
    digits = num.to_i.digits

    digits.each_with_index do |n, index|
      decimal += n * 8**index
    end
    decimal
  end

  private

  def valid_octal?(num)
    num.chars.all? { |n| n =~ /[0-7]/ }
  end
end
