class Node
  attr_accessor :value, :next

  def initialize(value, next_node=nil)
    @value = value
    @next = next_node
  end
end


linked_list = Node.new(1, Node.new(2, Node.new(10)))

# The standard idiom for iterating through a linked list
def iterate(node)
  while node != nil
    p node.value
    node = node.next
  end
end

# The recursive way to iterate through a linked list
def iterate_recursive(node)
  return if !node
  p node.value
  iterate_recursive(node.next)
end

# iterate(linked_list)

iterate_recursive(linked_list)
