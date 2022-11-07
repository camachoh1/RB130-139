# class Element
#   attr_reader :datum, :next

#   def initialize(datum, next_el=nil)
#     @datum = datum
#     @next = next_el
#   end

#   def tail?
#     self.next.nil?
#   end
# end

# class SimpleLinkedList
#   attr_reader :head

#   def size
#     size = 0
#     current_element = @head
#     while(current_element) # wont run if cur_el == nil 
#       size += 1
#       current_element = current_element.next
#     end
#     size # returns value of size (integer)
#   end

#   def empty?
#     @head.nil?
#   end

#   def push(datum)
#     element = Element.new(datum, @head) #adds value of head to next.
#     @head = element # head is now the newly created element. (next is the previous value of head)
#   end

#   def peek
#     @head.datum if @head
#   end

#   def pop
#     datum = peek
#     new_head = @head.next
#     @head = new_head
#     datum
#   end

#   def self.from_a(array)
#     array = [] if array.nil?

#     list = SimpleLinkedList.new
#     array.reverse_each {|datum| list.push(datum)}
#     list
#   end

#   def to_a
#     array = []
#     current_elem = head
#     while !current_elem.nil?
#       array.push(current_elem.datum)
#       current_elem = current_elem.next
#     end
#     array
#   end

#   def reverse
#     list = SimpleLinkedList.new
#     current_elem = head
#     while !current_elem.nil?
#       list.push(current_elem.datum)
#       current_elem = current_elem.next
#     end
#     list
#   end
# end

# list = SimpleLinkedList.new

# p SimpleLinkedList.from_a([1,2])








# # failed attempt

# # class SimpleLinkedList
# #   attr_reader :head, :list
# #   def initialize
# #     @list = []
# #     @head = @list[0]
# #   end

# #   def self.from_a(object)
# #     temp_object = SimpleLinkedList.new
# #     if object.nil? || object.empty?
# #       temp_object
# #     else
# #       object.reverse_each do |data|
# #         temp_object.push(data)
# #       end
# #     end
# #     temp_object
# #   end

# #   def size
# #     @list.size
# #   end

# #   def empty?
# #     @list.empty?
# #   end

# #   def push(el)
# #     element_a = Element.new(el)
# #     if @list.empty?
# #       @list.push(element_a)
# #     else 
# #       @list.unshift(Element.new(el, @list[-1]))
# #     end
# #   end

# #   def peek
# #     self.empty? ? nil : self.head.datum
# #   end

# #   def pop
# #     @list.shift.datum
# #   end
# # end

# # list = SimpleLinkedList.from_a((1..10).to_a)

# # p list.list

# # p list.head


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

