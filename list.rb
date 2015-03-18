# 1. Need to create a representation of a Node (or Vertex).
# 2. Write a method add_to_tail that appends a new value to the end.
# 3. Write a method length that returns the length of a list.
# 4. Overide the to_s method to nicely print the list.
# 5. Bonus: Write a function remove to remove a node from the list.


class Node




  def initialize(val)

    @val = val
    @next = nil

  end
  def to_s
    if @next == nil
      @val
    else
      "#{@val} #{@next}"
    end
  end
  def add_to_tail(val)

    if @next == nil
      @next = Node.new(val)

    else
      @next.add_to_tail(val)

    end
  end

  def remove_node(rmv_val)
    if @val == rmv_val
      @next
    else
      @next = @next.remove_node(rmv_val)
      self
    end
  end
 

  def length
    if @next == nil
      1
    else
      1 + @next.length
    end
  end



end

head = Node.new("1")
head.add_to_tail("2")
head.add_to_tail("3")
head.add_to_tail("4")
head.add_to_tail("5")
head.add_to_tail("6")

puts head
puts head.length
puts head.remove_node("1")

