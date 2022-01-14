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
