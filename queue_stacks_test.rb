# Now implement a queue using a stack.
# Enqueue, Dequeue and Count.

class Queue

  attr_reader :queue1, :queue2

  def initialize
    @queue1 = []
    @queue2 = []
  end

  def enqueue(value)
    @queue1.push(value)
    "in #{value}"
  end

  def dequeue
    @queue2 = @queue1.reverse + @queue2
    @queue1 = []
    "out #{@queue2.pop}"
  end

end

queue = Queue.new
p queue.enqueue('A')
p queue.enqueue('B')
p queue.enqueue('C')
p queue.dequeue # => A
p queue.enqueue('D')
p queue.dequeue # => B
p queue.dequeue # => C
p queue.dequeue # => D
