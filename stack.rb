class Stack
  attr_reader :head

  def initialize
    @head = nil
  end

  def push(value)
    new_head = Node.new value, @head
    @head = new_head
  end

  def pop
    @head = @head.next_node
  end
end