class Todo
  DONE_MARKER = 'X'
  UNDONE_MARKER = ' '

  attr_accessor :title, :description, :done

  def initialize(title, description='')
    @title = title
    @description = description
    @done = false
  end

  def done!
    self.done = true
  end

  def done?
    done
  end

  def undone!
    self.done = false
  end

  def to_s
    "[#{done? ? DONE_MARKER : UNDONE_MARKER}] #{title}"
  end

  def ==(otherTodo)
    title == otherTodo.title &&
      description == otherTodo.description &&
      done == otherTodo.done
  end
end


# This class represents a collection of Todo objects.
# You can perform typical collection-oriented actions
# on a TodoList object, including iteration and selection.

class TodoList
  attr_accessor :title

  def initialize(title)
    @title = title
    @todos = []
  end

  def size
    @todos.size
  end

  def first
    @todos.first
  end

  def last
    @todos.last
  end

  def shift
    @todos.shift
  end

  def pop
    @todos.pop
  end

  def done?
    @todos.all? {|todo| todo.done?}
  end

  def <<(todo)
    raise TypeError, "Can only add Todo objects" unless todo.class == Todo

    @todos.push(todo)
  end
  alias_method :add, :<<

  def item_at(index)
    @todos.fetch(index) 
  end

  def mark_done_at(index)
    item_at(index).done!
  end

  def mark_undone_at(index)
    item_at(index).undone!
  end

  def done!
    @todos.each_index do |idx|
      mark_done_at(idx)
    end
  end

  def remove_at(index)
    @todos.delete(item_at(index))
  end

  def to_a
    @todos.clone
  end

  def to_s
    text = "---- #{title} ----\n"
    text << @todos.map(&:to_s).join("\n")
    text
  end

  def each
    index = 0

    while index < @todos.size
      yield(@todos[index])
      index += 1
    end
    self
  end

  def select
    index = 0
    temp_object = TodoList.new(title)

    while index < @todos.size
      if yield(@todos[index])
        temp_object.add(@todos[index])
      end
      index += 1
    end
    temp_object
  end

  def find_by_title(str)
    result = @todos.select {|todo| todo.title == str}
    result.empty? ? nil : result
  end

  def all_done
    select {|todo| todo.done?}
  end

  def all_not_done
    select {|todo| todo.done? == false}
  end

  def mark_done(str)
    each do |todo|
      todo.done! if todo.title == str
    end
  end

  def mark_all_done
    find_by_title(title) && find_by_title(title).done!
  end

  def mark_all_undone
    each do |todo|
      todo.undone!
    end
  end
end

