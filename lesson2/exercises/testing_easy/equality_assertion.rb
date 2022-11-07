# write a minitest assertion that will fail if value.downcase does not return 'xyz'

require 'minitest/autorun'
require 'minitest/reporters'

require_relative 'value'

class ValueTest < MiniTest::Test
  def Setup
    value = Value.new(2)
  end

  def test_downcase
    assert_equal('xyz', value.downcase)
  end
end