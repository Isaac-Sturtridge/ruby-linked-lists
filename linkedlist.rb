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
            @tail = current
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

    end

    def contains?(value)

    end

    def find(value)

    end

    def to_s

    end

end