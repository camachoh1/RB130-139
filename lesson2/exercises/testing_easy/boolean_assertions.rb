=begin 

Write a minitests assertion that will fail if the value.odd? is not true

=end
# value.rb
class Value
  attr_reader :val

  def initialize(num)
    @val = val
  end

  def odd?(val)
    val % 3 == 0
  end
end

#test_value.rb
require 'minitest/autorun'
require 'minitest/reporters'

require_relative 'value'

class ValueTest < MiniTest::Test
  def Setup
    value = Value.new(2)
  end

  def test_odd?
    assert_equal(true, value.odd?)
  end
end
