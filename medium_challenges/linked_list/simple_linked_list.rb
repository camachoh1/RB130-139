class Element
  attr_reader :datum, :next

  def initialize(datum, next_el=nil)
    @datum = datum
    @next = next_el
  end

  def tail?
    @next.nil?
  end
end

class SimpleLinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def size
    size = 0

    current_elem = head

    while current_elem
      size += 1
      current_elem = current_elem.next
    end

    size
  end

  def peek
    head ? head.datum : nil
  end

  def empty?
    head.nil?
  end

  def push(el)
    new_element = Element.new(el, head)
    @head = new_element
    self
  end

  def pop
    datum = self.peek
    new_head = head.next
    @head = new_head
    datum
  end

  def self.from_a(arr)
    arr = [] if arr.nil?
    list = new
    arr.reverse_each { |el| list.push(el) }
    list
  end

  def to_a
    results = []
    current_el = head

    while current_el
      results << current_el.datum
      current_el = current_el.next
    end
    results
  end

  def reverse
    result_list = SimpleLinkedList.new
    current_el = head

    while current_el
      result_list.push(current_el.datum)
      current_el = current_el.next
    end
    result_list
  end
end

list = SimpleLinkedList.new.push(1)
p list.head

