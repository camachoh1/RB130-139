class Verses
  attr_reader :bottles

  def initialize(bottles)
    @bottles = bottles
  end


  def single_verse
    case bottles
    when 0
      verse_0_bottles
    when 1
      verse_1_bottle
    when 2
      verse_2_bottles
    else
      normal_verse
    end
  end
    
  private

  def normal_verse
    "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer.\n" \
    "Take one down and pass it around, #{bottles - 1} bottles of beer on the wall.\n"
  end

  def verse_2_bottles
    "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer.\n" \
    "Take one down and pass it around, #{bottles - 1} bottle of beer on the wall.\n"
  end

  def verse_1_bottle
    "#{bottles} bottle of beer on the wall, #{bottles} bottle of beer.\n" \
    "Take it down and pass it around, no more bottles of beer on the wall.\n"
  end

  def verse_0_bottles
    "No more bottles of beer on the wall, no more bottles of beer.\n" \
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  end
end

class BeerSong
  def self.verse(number)
    Verses.new(number).single_verse
  end

  def self.verses(start, stop)
    result = []

    while start >= stop
      result << "#{verse(start)}"
      start -= 1
    end

    result.join("\n")
  end

  def self.lyrics
    verses(99,0)
  end
end