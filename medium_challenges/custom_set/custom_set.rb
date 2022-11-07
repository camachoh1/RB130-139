class CustomSet
  attr_reader :set

  def initialize(set=[])
    @set = set.uniq
  end

  def empty?
    set.empty?
  end

  def contains?(el)
    set.include?(el)
  end

  def subset?(other)
    set.all? { |el| other.set.include?(el) }
  end

  def disjoint?(other)
    set.none? { |el| other.set.include?(el) }
  end

  def eql?(other)
    return false unless set.size == other.set.size
    set.all? { |el| other.contains?(el) }
  end

  def add(el)
    @set.push(el) unless @set.include?(el)
    self
  end

  def intersection(other)
    intersection_point = set & other.set
    CustomSet.new(intersection_point)
  end

  def difference(other)
    difference = set - other.set
    CustomSet.new(difference)
  end

  def union(other)
    union_point = set | other.set
    CustomSet.new(union_point)
  end

  def ==(other)
    eql?(other)
  end
end
