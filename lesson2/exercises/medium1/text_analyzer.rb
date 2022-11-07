=begin 

Fill out the rest of the Ruby code below so it prints out like that shown in "sample output". You should read the text from a simple text file that you provide. (we also supply some example text below, but try the program with your text as well.)

Read the text file in the #process method and pass the text to the block provided in each call. Everything you need to work on is either part of the #process method or part of the blocks. You need no other additions or changes. 

The text you use does not have to produce the same numbers as the sample output but should have the indicated format. 

=end


class TextAnalyzer

  def process
    text = File.open('sample.txt', 'r')
    yield(text.read)
    text.close
  end
end

analyzer = TextAnalyzer.new

p analyzer.process { |text| puts "#{text.split(/\n\n+/).count} paragraphs" }
p analyzer.process { |text| puts "#{text.split("\n").count} lines" }
p analyzer.process { |text| puts "#{text.split(" ").count} words" }