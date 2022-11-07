class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(other_strand)
    hamming_distance = 0

    short = @strand.size <= other_strand.size ? @strand : other_strand

    short.chars.each_index do |index|
      hamming_distance += 1 if @strand[index] != other_strand[index]
    end
    hamming_distance
  end
end
