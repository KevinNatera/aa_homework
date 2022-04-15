class Stack

    def initialize
      # create ivar to store stack here!
      @stack = []
    end

    def push(el)
      # adds an element to the stack
      @stack << (el)
    end

    def pop
      # removes one element from the stack
      @stack.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @stack[-1]
    end
  end


class Queue

    def initialize
      @queue = []
    end

    def enqueue(el)
      # adds an element to the stack
      @queue.push(el)
    end

    def dequeue
        @queue.shift
    end

    def peek
      @queue[0]
    end

end



class Map
  attr_accessor :map

  def initialize
    @map = []
  end

  def set(key,val)
     if @map.none? { |pair| pair[0] == key}
      @map << [key,val]
     else   
      @map.each do |pair|
        if key == pair[0]
          pair[1] = val
        end
      end
     end
  end 

  def get(key)
    @map.each do |pair|
      if key == pair[0]
       return  pair[1]
      end
    end
    nil
  end


  def delete(key)
    @map.each_with_index do |pair,i|
      if key == pair[0]
        @map.delete_at(i)
      end
    end
  end

  def show

    @map.each_with_index do |pair,i|
      puts "pair #{i + 1}  #{pair}"
    end
  end
end



