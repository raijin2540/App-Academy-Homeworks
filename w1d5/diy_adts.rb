class Stack
  attr_reader :arr
  def initialize
    @arr = []
  end

  def add(el)
    @arr << el
  end

  def remove
    @arr.pop
  end

  def show
    @arr
  end
end

class Queue
  def initialize
    @arr = []
  end

  def enqueue(el)
    @arr << el
  end

  def dequeue
    @arr.shift
  end

  def show
    @arr
  end

end

class Map
  def initialize
    @arr = []
  end

  def assign(key, value)
    @arr.each do |pair|
      if pair[0] == key
        pair[1] = value
        return [key, value]
      end
    end

    @arr << [key, value]
  end

  def lookup(key)
    @arr.each do |pair|
      if pair[0] == key
        return pair[1]
      end
    end

    puts "Key does not exist!"
  end

  def remove(key)
    @arr.each do |pair|
      if pair[0] == key
        @arr.delete(pair)
      end
    end

    puts "Key does not exist!"
  end

  def show
    @arr
  end


end
