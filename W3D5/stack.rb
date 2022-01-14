class Stack
    def initialize
        @the_array = []
    end

    def push(el)
        @the_array.push(el)
        el
    end

    def pop
        @the_array.pop
    end

    def peek
        @the_array[-1]
    end
  end


class Queue
    def initialize
        @queue_arr = []
    end

    def enqueue(el)
        @queue_arr.push(el)
        el
    end

    def dequeue
        @queue_arr.shift
    end

    def peek
        @queue_arr.first
    end

end


