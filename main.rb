

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
                
        else
            @head = Node.new(value)
        end
    end
    
    def prepend(value)

        if @head
            new_head = Node.new(value)
            new_head.next = @head
            @head = new_head
        else
            append(value)
        end

    end

    def size
        if @head
            current_node = @head
            counter = 1
            while current_node.next != nil
                counter += 1
                current_node = current_node.next
            end

            
            

        else
            
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
            length = size 
            while index < 0
            index = index + length
            
            end
            current_node = @head
            counter = 0
            while current_node.next != nil
                break if counter == index
                counter += 1
                current_node = current_node.next
            end
            if counter == index
                puts current_node.data
            else
                puts "The index given doesn't exist."
            end
        else
            puts "This list is empty."
        end 

    end

    def pop
        if @head
            if @head.next
                current_node = @head
                while current_node.next.next != nil
                    current_node = current_node.next
                end

                current_node.next = nil
            else
                @head = nil
            end
        else
            puts "This list is empty, so no elements can be popped."
        end

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
                 nil
            else
                 index
            end
        else
         puts "This list is empty."
        end 


    end

    def to_s
        if @head
            
            current_node = @head
        
            while current_node.next != nil
                print " (#{current_node.data}) ->"
                current_node = current_node.next
            end
            puts " (#{current_node.data})"
        else
            puts "This list is empty."
        end
    end

    def insert_at(value, index)
        if @head
            length = size 
            while index < 0
            index = index + length
            end
            if (index) >= length
                append(value)

            elsif index == 0
                prepend(value) 

            elsif index < length 
                counter = 0
                current_node = @head
                while counter < index - 1
                    current_node = current_node.next
                    counter += 1
                end
                new_element = Node.new(value)
                new_element.next = current_node.next
                current_node.next = new_element

                

            end
        else
            append(value)
        end
    end

    def remove_at(index)
        if @head
            length = size 
            while index < 0
            index = index + length
            end
            if index >= length
                pop
            elsif index == 0
                @head = @head.next
            else
                counter = 0 
                current_node = @head
                while counter < index - 1
                    counter += 1
                    current_node = current_node.next
                end
                current_node.next = current_node.next.next
            end
        else
            puts "Empty list"
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

n = 8
m = 0
n.times do
    m += 1
    my_list.append(m)
end
my_list.to_s
my_list.size
my_list.finds(4)
puts my_list.contains?(0)
my_list.at(-50)
my_list.pop
my_list.prepend(55)
my_list.insert_at(55, 0)
my_list.to_s
my_list.remove_at(2)
my_list.to_s

