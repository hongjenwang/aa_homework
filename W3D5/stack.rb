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


class Map

    def initialize
        @underlying_array = []
    end

    def set(key, value) 
        #get index of the kv if key is found in the underlying arry
        pair_idx = @underlying_array.index { |pair| pair[0] == key}
        #if it exists, update the value of the index to the value passed in
        #if not push it in the array
        if pair_idx
            @underlying_array[pair_idx][1] == value
        else
            @underlying_array.push([key, value])
        end
        value
    end

    # a key is passed in to get its value. 
    def get(key) 
        @underlying_array.each { |pair| return pair[1] if pair[0] == key  }
        nil
    end


    def delete(key)
        @underlying_array.reject{ |pair| pair[0] == key }
    end

    def show

    end



end