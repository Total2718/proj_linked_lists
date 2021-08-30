

class LinkedList
    def initialize
        @head = nil
        
    end

    def append(value)
        if @head
                current_node = @head
                while current_node.next != nil
                    current_node = current_node.next
                end
                current_node.next = Node.new(value)
                puts @head.data
        else
            @head = Node.new(value)
        end
    end
    
    def prepend(value)

    end

    def size
        if @head
            current_node = @head
            counter = 1
            while current_node.next != nil
                counter += 1
                current_node = current_node.next
            end

            puts "This list contains #{counter} nodes."


        else
            puts "This list is empty."
            counter = 0
            
        end
        counter
    end

    def show_head
       if @head
        puts "The head is #{@head.data}"
       end
        
    end

    def show_tail
        if @head
            current_node = @head
            while current_node.next != nil
                current_node = current_node.next
            end
            puts "The tail is #{current_node.data}"
        end
    end

    def at(index)

        if @head
            current_node = @head
            counter = 0
            while current_node.next != nil
                break if counter == index
                counter += 1
                current_node = current_node.next
            end
            if counter == index
                current_node.data
            else
                 "The index given doesn't exist."
            end
        else
             "This list is empty."
        end 

    end

    def pop
    end

    def contains?(value)
        if @head
            current_node = @head
            while current_node.next != nil
                break if current_node.data == value
                current_node = current_node.next
            end
            
            if current_node.data != value && current_node.next == nil
                return false
            else
                return true
            end
        else
             "This list is empty."
        end 
    end

    def finds(value)
        if @head
            current_node = @head
            index = 0 
            while current_node.next != nil
                break if current_node.data == value
                index += 1
                current_node = current_node.next
            end
            
            if current_node.data != value && current_node.next == nil
                return nil
            else
                return index
            end
        else
         "This list is empty."
        end 


    end

    def to_s
        if @head
            show_head
            current_node = @head.next
        
            while current_node.next != nil
                puts current_node.data
                current_node = current_node.next
            end
            show_tail
        else
            puts "This list is empty."
        end
    end

end

class Node
    attr_accessor :next, :data

    def initialize(data)
        @data = data
        @next = nil

    end
end


my_list = LinkedList.new()
my_list.append(5)
my_list.append(4)
my_list.append(3)
my_list.append(2)
my_list.append(1)
my_list.append(0)
my_list.to_s
my_list.size
puts my_list.finds(4)
puts my_list.contains?(0)
puts my_list.at(6)
