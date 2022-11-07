class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def match(list)
    list.select do |w|
      w.downcase.chars.sort == word.downcase.chars.sort &&
        w.downcase != word.downcase
    end.uniq
  end
end
