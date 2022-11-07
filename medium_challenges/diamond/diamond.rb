# class Diamond
#   def self.make_diamond(letter)
#     range = ('A'..letter).to_a + ('A'...letter).to_a.reverse
#     width = determine_width(letter)

#     range.each_with_object([]) do |char, arr|
#       arr << make_row(char).center(width)
#     end.join("\n") + "\n"
#   end

#   class << self
#     private

#     def determine_spaces(letter)
#       all_letters = ['B']
#       spaces = 1

#       until all_letters.include?(letter)
#         current_letter = all_letters.last
#         all_letters << current_letter.next
#         spaces += 2
#       end

#       ' ' * spaces
#     end

#     def make_row(letter)
#       return "A" if letter == 'A'
#       return "B B" if letter == 'B'
      
#       letter + determine_spaces(letter) + letter
#     end

#     def determine_width(letter)
#       return 1 if letter == "A"

#       determine_spaces(letter).count(' ') + 2
#     end
#   end
# end


# p Diamond.make_diamond("C")

# #   A   *
# #  B B  *
# # C   C *
# #  B B  *
# #   A   *

# # " A \nB B\nC   C\nB B\n A \n" <- width without adding 2. #center cannot center 'B B' because the string is the same size as the width.

# #"A" is centered to the width 3 because the width is greater than the string. However, this wont work since the C row is greater than the A row. Remember the width and height of the diamond must be equal. Which means the widest row must be the same size of every other row. That is why #determine_width adds two to the count of spaces. 

# # not only that but #center needs a width value greater than the string size in order to center the string with the propper padding.

# # "  A  \n B B \nC   C\n B B \n  A  \n"



class Diamond
  ALPHABETS = ('A'..'Z').to_a

  def self.make_diamond(mid_letter)
    # Calculate the diamond's width
    mid_idx = ALPHABETS.index(mid_letter)
    diamond_width = mid_idx * 2 + 1

    # Create top and middle rows with make_row helper method
    rows = []
    0.upto(mid_idx) do |idx|
      letter = ALPHABETS[idx]
      rows << make_row(idx, diamond_width, letter)
    end
    

    # Join top half to bottom half of diamond
    puts (rows + rows.reverse[1..-1]).join
  end

  class << self
    private

    def make_row(idx, width, letter)
      # The first row is unique - it only contains 1 letter
      if idx.zero?
        letter.center(width) + "\n"
      # All other rows contain two letters and follow a pattern
      else
        middle_spaces = " " * (idx * 2 - 1)
        (letter + middle_spaces + letter).center(width) + "\n"
      end
    end
  end
end

Diamond.make_diamond("E")