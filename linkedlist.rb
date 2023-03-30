require_relative "node.rb"

class LinkedList

    def initialize
        @head = nil
        @tail = nil
    end

    def append(value)
        if @head.nil?
            @head = Node.new(value)
            @tail = @head
        else 
            current = @head
            while current.next_node != nil
                current = current.next_node
            end
            current.next_node = Node.new(value)
            @tail = current.next_node
        end 
    end

    def prepend(value)
        if @head.nil?
            @head = Node.new(value)
            @tail = @head
        else 
            current = @head
            prepended = Node.new(value)
            prepended.next_node = current
            @head = prepended
        end 
    end

    def size
        count = 0
        current = @head
        while current.next_node != nil
            current = current.next_node
            count += 1
        end 
        count 
    end

    def head
        @head
    end
    
    def tail
        @tail
    end

    def at(index)
        current = @head
        i = 0
        while i < index
            current = current.next_node
        end
        current
    end

    def pop
        current = @head
        while current.next_node != @tail
            current = current.next_node
        end 
        current.next_node = nil
        @tail = current
    end

    def contains?(value)
        current = @head
        while current.next_node != nil
            current = current.next_node
            if current.value == value
                return true
            end
        end
        return false
    end

    def find(value)
        current = @head
        i = 0
        while current.next_node != nil
            current = current.next_node
            i += 1
            if current.value == value
                return i
            end 
        end
        return nil
    end

    def to_s
        current = @head
        string = '( ' + current.value.to_s + ' ) '
        while current.next_node != nil
            current = current.next_node
            string = string + '( ' + current.value.to_s + ' ) '
        end
        string += 'nil'
        string
    end

end
