class MyQueue

  def initialize
    @store = []
  end

  def enqueue(el)
    @store << el
  end

  def dequeue
    @store.shift
  end

  def peek
    @store[0]
  end

  def size
    @store.count
  end

  def empty?
    @store.empty?
  end
end

class MyStack

  def initialize
    @store = []
    @max = nil
    @min = nil
  end

  def pop
    @store.pop
  end

  def push(el)
    if @min.nil?
      @min = el
      @max = el
    end
    @min = el if @min > el
    @max = el if @max < el
    @store.push(el)
  end

  def peek
    @store[-1]
  end

  def size
    @store.count
  end

  def empty?
    @store.empty?
  end

  def max
    @max
  end

  def min
    @min
  end
end

class StackQueue
  def initialize
    @my_stack = MyStack.new
    @helper = MyStack.new
  end

  def enqueue(el)
    until @my_stack.empty?
      @helper.push(@my_stack.pop)
    end

    @my_stack.push(el)

    until @helper.empty?
      @my_stack.push(@helper.pop)
    end
  end

  def size
    @my_stack.size
  end

  def empty?
    @my_stack.empty?
  end

  def dequeue
    @my_stack.pop
  end
end

class MinMaxStackQueue
  attr_reader :min, :max

  def initialize
    @my_stack = MyStack.new
    @helper = MyStack.new
    @min = nil
    @max = nil
  end

  def enqueue(el)
    if @min.nil?
      @min = el
      @max = el
    end

    @min = el if @min > el
    @max = el if @max < el

    until @my_stack.empty?
      @helper.push(@my_stack.pop)
    end

    @my_stack.push(el)

    until @helper.empty?
      @my_stack.push(@helper.pop)
    end
  end

  def size
    @my_stack.size
  end

  def empty?
    @my_stack.empty?
  end

  def dequeue
    @my_stack.pop
  end
end
