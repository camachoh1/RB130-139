SCORES = {
  ['a', 'e', 'i', 'o', 'u', 'l', 'n', 'r', 's', 't'] => 1,
  ['d', 'g'] => 2,
  ['b', 'c', 'm', 'p'] => 3,
  ['f', 'h', 'v', 'w', 'y'] => 4,
  ['k'] => 5,
  ['j', 'x'] => 8,
  ['q', 'z'] => 10
}

class Scrabble
  def initialize(word)
    @word = word
  end

  def self.score(word)
    new(word).score
  end

  def score
    return 0 if @word.nil?

    score = 0
    SCORES.each do |k, v|
      @word.chars.each do |char|
        score += v if k.include?(char.downcase)
      end
    end
    score
  end
end
