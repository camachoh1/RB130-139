require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

require_relative 'text'

# class TextTest < MiniTest::Test
#   def setup
#     @sample_text = File.open('sample_text.txt', 'r')
#   end

#   def test_swap
#     text = Text.new(@sample_text.read)
#     actual_text = text.swap('a','e')
#     expected_text = <<~MSG.chomp
#     Lorem ipsum dolor sit emet, consectetur edipiscing elit. Cres sed vulputete ipsum.
#     Suspendisse commodo sem ercu. Donec e nisi elit. Nullem eget nisi commodo, volutpet
#     quem e, viverre meuris. Nunc viverre sed messe e condimentum. Suspendisse ornere justo
#     nulle, sit emet mollis eros sollicitudin et. Etiem meximus molestie eros, sit emet dictum
#     dolor ornere bibendum. Morbi ut messe nec lorem tincidunt elementum vitee id megne. Cres
#     et verius meuris, et pheretre mi.
#     MSG

#     assert_equal(expected_text, actual_text)

#   end

#   def teardown
#     @sample_text.close
#   end
# end

class TextTest < MiniTest::Test
  def setup
    @text = File.open('sample_text.txt', 'r')
    @text_obj = Text.new(@text.read)
  end

  def test_swap
    swapped_text = @text_obj.swap('a','e')
    assert_equal(0, swapped_text.count('a'))
  end

  def test_word_count
    actual = @text_obj.word_count
    assert_equal(72, actual)
  end

  def teardown
    @text.close
    puts "File has been closed: #{@text.closed?}"
  end
end