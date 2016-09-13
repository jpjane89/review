class Node
  attr_accessor :value, :next_node 

	def initialize(value, next_node)
	    @value = value
	    @next_node = next_node
	end

	def print_values(list_node)
	  print "#{list_node.value} --> "
	  if list_node.next_node.nil?
	    print "nil\n"
	    return
	  else
	    print_values(list_node.next_node)
	  end
	end

	def reverse_list(list, previous=nil)
	  list_minus_head = list.next_node
	  list.next_node = previous
	  if list_minus_head
	    reverse_list(list_minus_head, list)
	  else
	    list
	  end
	end

end

visualization of reversing linked list: 

previous
↓
nil    12 -> 99 -> 37 -> nil
       ^

       previous
       ↓ 
nil <- 12       99 -> 37 -> nil
                ^

             previous
             ↓
nil <- 12 <- 99       37 -> nil
                      ^         

nil <- 12 <- 99 <- 37 
                   ^    


