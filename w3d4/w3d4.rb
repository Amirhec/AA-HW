class Stack
    attr_accessor :arr
    def initialize
    @arr = []

    end

    def push(el)
      @arr.push(el)
    end

    def pop
      @arr.pop
    end

    def peek
      return arr[-1]
    end


  end


  class Queue
    
    def initialize
      @arr = []
    end
  
    def enqueue(el)
      @arr.push(el)
      
    end
  
    def dequeue
      @arr.shift
    end
  
    def peek
      @arr[0]
    end
  
    
    
  end
  
